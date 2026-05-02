import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_history_use_case.freezed.dart';

@freezed
abstract class GetHistoryParams with _$GetHistoryParams {
  const factory GetHistoryParams({required int page}) =
      _GetGeneratedColorsHistoryParams;
}

class GetHistoryUseCase
    extends UseCase<List<GeneratedColor>, GetHistoryParams> {
  final GeneratedColorRepository repository;

  const GetHistoryUseCase({required this.repository});

  @override
  Future<Result<List<GeneratedColor>>> call(
    GetHistoryParams params,
  ) async {
    return repository.getColors(page: params.page);
  }
}
