import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/domain/repositories/settings_theme_repository.dart';

class SetThemeUseCase extends UseCase<void, SetThemeParams> {
  final SettingsThemeRepository repository;

  const SetThemeUseCase({required this.repository});

  @override
  Future<Result<void>> call(SetThemeParams params) {
    return repository.saveTheme(params.entity);
  }
}

class SetThemeParams {
  final SettingsTheme entity;

  const SetThemeParams({required this.entity});
}
