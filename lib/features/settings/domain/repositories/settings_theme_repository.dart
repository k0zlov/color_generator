import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';

abstract interface class SettingsThemeRepository {
  Future<Result<void>> saveTheme(SettingsTheme entity);

  Future<Result<SettingsTheme?>> getTheme();
}
