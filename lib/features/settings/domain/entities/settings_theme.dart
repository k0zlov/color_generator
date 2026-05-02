import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_theme.freezed.dart';

@freezed
abstract class SettingsTheme with _$SettingsTheme {
  const factory SettingsTheme({
    @Default(SettingsThemeMode.system) SettingsThemeMode mode,
  }) = _SettingsTheme;
}

enum SettingsThemeMode {
  light,
  dark,
  system
  ;

  bool get isSystem => this == system;

  bool get isDark => this == dark;

  bool get isLight => this == light;
}
