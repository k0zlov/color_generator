import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_generated_color_use_case.freezed.dart';

@freezed
abstract class SaveGeneratedColorParams with _$SaveGeneratedColorParams {
  const factory SaveGeneratedColorParams({
    required GeneratedColor entity,
  }) = _SaveGeneratedColorParams;
}

class SaveGeneratedColorUseCase
    extends UseCase<void, SaveGeneratedColorParams> {
  final GeneratedColorRepository repository;

  const SaveGeneratedColorUseCase({required this.repository});

  @override
  Future<Result<void>> call(SaveGeneratedColorParams params) async {
    return repository.saveColor(params.entity);
  }
}
