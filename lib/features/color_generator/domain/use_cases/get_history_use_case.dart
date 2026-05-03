import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';

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

class GetHistoryParams {
  final int page;

  const GetHistoryParams({required this.page});
}
