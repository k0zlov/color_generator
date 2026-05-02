import 'package:color_generator/core/database/database.dart';
import 'package:color_generator/core/failures/failure.dart';
import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/data/models/generated_color_model.dart';
import 'package:drift/drift.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class GeneratedColorProvider {
  Future<Result<void>> saveColor(GeneratedColorModel model);

  Future<Result<List<GeneratedColorModel>>> getColors({
    required int limit,
    required int offset,
  });

  Future<Result<void>> deleteColor(String id);

  Future<Result<int>> deleteAllColors();
}

class DriftGeneratedColorProvider implements GeneratedColorProvider {
  final Database db;

  const DriftGeneratedColorProvider({required this.db});

  @override
  Future<Result<int>> deleteAllColors() async {
    try {
      final int count = await db.generatedColors.deleteAll();

      return Right(count);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Result<void>> deleteColor(String id) async {
    try {
      await db.generatedColors.deleteWhere(
        (tbl) => tbl.id.equals(id),
      );

      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Result<List<GeneratedColorModel>>> getColors({
    required int limit,
    required int offset,
  }) async {
    try {
      final query = db.generatedColors.select()
        ..orderBy([(tbl) => OrderingTerm.desc(tbl.createdAtUnix)])
        ..limit(limit, offset: offset);
      final List<GeneratedColorModel> models = await query.get();

      return Right(models);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Result<void>> saveColor(GeneratedColorModel model) async {
    try {
      await db.generatedColors.insertOne(
        GeneratedColorsCompanion.insert(
          id: model.id,
          red: model.red,
          blue: model.blue,
          green: model.green,
          createdAtUnix: model.createdAtUnix,
        ),
      );

      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }
}
