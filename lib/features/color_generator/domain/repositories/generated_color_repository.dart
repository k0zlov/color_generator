import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';

abstract interface class GeneratedColorRepository {
  Future<Result<void>> saveColor(GeneratedColor entity);

  Future<Result<List<GeneratedColor>>> getColors({required int page});

  Future<Result<void>> deleteColor(String id);

  Future<Result<int>> deleteAllColors();
}
