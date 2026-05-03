sealed class NavigationRoute {
  String get path;

  Object? get arguments => null;

  const NavigationRoute();
}

abstract interface class AppRoutePaths {
  static const String colorGenerator = '/color-generator';
  static const String settings = '/settings';
  static const String history = '/history';
}

final class ColorGeneratorRoute extends NavigationRoute {
  @override
  String get path => AppRoutePaths.colorGenerator;
}

final class SettingsRoute extends NavigationRoute {
  @override
  String get path => AppRoutePaths.settings;
}

final class HistoryRoute extends NavigationRoute {
  @override
  String get path => AppRoutePaths.history;
}
