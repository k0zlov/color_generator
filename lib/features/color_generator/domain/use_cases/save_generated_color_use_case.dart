import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';

class SaveGeneratedColorUseCase
    extends UseCase<void, SaveGeneratedColorParams> {
  final GeneratedColorRepository repository;

  const SaveGeneratedColorUseCase({required this.repository});

  @override
  Future<Result<void>> call(SaveGeneratedColorParams params) async {
    return repository.saveColor(params.entity);
  }
}

class SaveGeneratedColorParams {
  final GeneratedColor entity;

  const SaveGeneratedColorParams({required this.entity});
}
