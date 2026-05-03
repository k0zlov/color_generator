import 'package:color_generator/core/core.dart';
import 'package:color_generator/features/color_generator/color_generator.dart';
import 'package:color_generator/features/settings/settings.dart';
import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> registerDependencies() async {
  _database();
  await _sharedPreferences();
  _keys();
  _router();
  _services();
  _providers();
  _repositories();
  _useCases();
  _cubits();
  await getIt.allReady();
}

void _database() {
  getIt.registerLazySingleton(Database.defaults);
}

Future<void> _sharedPreferences() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  getIt.registerSingleton(preferences);
}

void _keys() {
  getIt.registerLazySingleton(GlobalKey<NavigatorState>.new);
}

void _router() {
  getIt.registerLazySingleton(() => createRouter(navigatorKey: getIt()));
}

void _services() {
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
  getIt.registerSingletonAsync(
    () async {
      final ColorGeneratorCubit cubit = ColorGeneratorCubit(
        getGeneratedColorsHistoryUseCase: getIt(),
        saveGeneratedColorUseCase: getIt(),
        generateColorUseCase: getIt(),
        clearHistoryUseCase: getIt(),
        notificationService: getIt(),
      );
      await cubit.initialize();

      return cubit;
    },
  );

  getIt.registerSingletonAsync(
    () async {
      final SettingsCubit cubit = SettingsCubit(
        notificationService: getIt(),
        setThemeUseCase: getIt(),
        getThemeUseCase: getIt(),
      );

      await cubit.initialize();

      return cubit;
    },
  );
}
