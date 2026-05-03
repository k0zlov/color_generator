class SettingsTheme {
  final SettingsThemeMode mode;

  const SettingsTheme({this.mode = .system});

  SettingsTheme copyWith({
    SettingsThemeMode? mode,
  }) {
    return SettingsTheme(
      mode: mode ?? this.mode,
    );
  }
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
