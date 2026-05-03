import 'package:color_generator/core/core.dart';
import 'package:color_generator/features/color_generator/data/providers/generated_color_provider.dart';
import 'package:color_generator/features/color_generator/data/repositories/generated_color_repository_impl.dart';
import 'package:color_generator/features/color_generator/domain/repositories/generated_color_repository.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/clear_history_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/generate_color_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/get_history_use_case.dart';
import 'package:color_generator/features/color_generator/domain/use_cases/save_generated_color_use_case.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/features/settings/data/providers/settings_theme_local_provider.dart';
import 'package:color_generator/features/settings/data/repositories/settings_theme_repository_impl.dart';
import 'package:color_generator/features/settings/domain/repositories/settings_theme_repository.dart';
import 'package:color_generator/features/settings/domain/use_cases/get_theme_use_case.dart';
import 'package:color_generator/features/settings/domain/use_cases/set_theme_use_case.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Get It instance
final GetIt getIt = GetIt.instance;

Future<void> registerDependencies() async {
  _database();
  await _sharedPreferences();
  _router();
  _services();
  _providers();
  _repositories();
  _useCases();
  _cubits();
}

void _database() {
  getIt.registerLazySingleton(Database.defaults);
}

Future<void> _sharedPreferences() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  getIt.registerSingleton(preferences);
}

void _router() {
  getIt.registerLazySingleton(GlobalKey<NavigatorState>.new);

  getIt.registerLazySingleton(
    () => AppRouter(navigatorKey: getIt()),
  );
}

void _services() {
  getIt.registerLazySingleton<NavigationService>(
    () => NavigationServiceImpl(navigatorKey: getIt()),
  );
  getIt.registerLazySingleton<NotificationService>(NotificationServiceImpl.new);
}

void _providers() {
  getIt.registerLazySingleton<GeneratedColorProvider>(
    () => DriftGeneratedColorProvider(db: getIt()),
  );
  getIt.registerLazySingleton<SettingsThemeLocalProvider>(
    () => SharedPreferencesSettingsThemeProvider(
      sharedPreferences: getIt(),
    ),
  );
}

void _repositories() {
  getIt.registerLazySingleton<GeneratedColorRepository>(
    () => GeneratedColorRepositoryImpl(provider: getIt()),
  );
  getIt.registerLazySingleton<SettingsThemeRepository>(
    () => SettingsThemeRepositoryImpl(provider: getIt()),
  );
}

void _useCases() {
  getIt.registerLazySingleton(
    () => GetHistoryUseCase(repository: getIt()),
  );

  getIt.registerLazySingleton(() => ClearHistoryUseCase(repository: getIt()));

  getIt.registerLazySingleton(
    () => SaveGeneratedColorUseCase(repository: getIt()),
  );

  getIt.registerLazySingleton(GenerateColorUseCase.new);

  getIt.registerLazySingleton(() => SetThemeUseCase(repository: getIt()));
  getIt.registerLazySingleton(() => GetThemeUseCase(repository: getIt()));
}

void _cubits() {
  getIt.registerLazySingleton(
    () => ColorGeneratorCubit(
      getGeneratedColorsHistoryUseCase: getIt(),
      saveGeneratedColorUseCase: getIt(),
      generateColorUseCase: getIt(),
      clearHistoryUseCase: getIt(),
      notificationService: getIt(),
    ),
  );

  getIt.registerLazySingleton(
    () => SettingsCubit(
      notificationService: getIt(),
      setThemeUseCase: getIt(),
      getThemeUseCase: getIt(),
    ),
  );
}
