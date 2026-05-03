import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/domain/repositories/settings_theme_repository.dart';

class GetThemeUseCase extends UseCase<SettingsTheme?, NoParams> {
  final SettingsThemeRepository repository;

  const GetThemeUseCase({required this.repository});

  @override
  Future<Result<SettingsTheme?>> call(_) {
    return repository.getTheme();
  }
}
