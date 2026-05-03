import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/data/models/generated_color_model.dart';
import 'package:color_generator/features/color_generator/data/providers/generated_color_provider.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';

class GeneratedColorRepositoryImpl implements GeneratedColorRepository {
  final GeneratedColorProvider provider;

  const GeneratedColorRepositoryImpl({required this.provider});

  @override
  Future<Result<int>> deleteAllColors() {
    return provider.deleteAllColors();
  }

  @override
  Future<Result<List<GeneratedColor>>> getColors({required int page}) async {
    const int limit = 50;

    final result = await provider.getColors(
      limit: limit,
      offset: page * limit,
    );

    return result.map((models) => models.map((e) => e.toEntity()).toList());
  }

  @override
  Future<Result<void>> saveColor(GeneratedColor entity) {
    return provider.saveColor(GeneratedColorModel.fromEntity(entity));
  }
}
