import 'package:color_generator/core/navigation/navigation.dart';

// ignore: prefer_match_file_name
abstract class AppRoutePaths {
  static const String colorGenerator = '/color-generator';
  static const String settings = '/settings';
  static const String history = '/history';
}

class ColorGeneratorRoute extends NavigationRoute {
  @override
  Object? get arguments => null;

  @override
  String get path => AppRoutePaths.colorGenerator;
}

class SettingsRoute extends NavigationRoute {
  @override
  Object? get arguments => null;

  @override
  String get path => AppRoutePaths.settings;
}

class HistoryRoute extends NavigationRoute {
  @override
  Object? get arguments => null;

  @override
  String get path => AppRoutePaths.history;
}
