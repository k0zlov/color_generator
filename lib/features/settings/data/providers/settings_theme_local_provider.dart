import 'dart:convert';

import 'package:color_generator/core/failures/failure.dart';
import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/data/models/settings_theme_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class SettingsThemeLocalProvider {
  Future<Result<void>> saveTheme(SettingsThemeModel model);

  Future<Result<SettingsThemeModel?>> getTheme();
}

class SharedPreferencesSettingsThemeProvider
    implements SettingsThemeLocalProvider {
  final SharedPreferences sharedPreferences;

  const SharedPreferencesSettingsThemeProvider({
    required this.sharedPreferences,
  });

  static const String themeKey = 'app.theme';

  @override
  Future<Result<SettingsThemeModel?>> getTheme() async {
    try {
      final String? rawData = sharedPreferences.getString(themeKey);

      if (rawData == null) return const Right(null);

      final data = jsonDecode(rawData) as Map<String, dynamic>;

      return Right(SettingsThemeModel.fromJson(data));
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Result<void>> saveTheme(SettingsThemeModel model) async {
    try {
      final String data = jsonEncode(model.toJson());

      final isSuccess = await sharedPreferences.setString(themeKey, data);

      if (!isSuccess) throw Exception('Could not save theme.');

      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }
}
