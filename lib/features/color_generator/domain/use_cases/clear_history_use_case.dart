import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';

class ClearHistoryUseCase extends UseCase<void, NoParams> {
  final GeneratedColorRepository repository;

  const ClearHistoryUseCase({required this.repository});

  @override
  Future<Result<void>> call(NoParams params) {
    return repository.deleteAllColors();
  }
}
