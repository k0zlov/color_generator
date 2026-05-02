import 'package:color_generator/core/database/database.dart';
import 'package:color_generator/core/navigation/navigation.dart';
import 'package:color_generator/core/notifications/notification_service.dart';
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
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Get It instance
final GetIt getIt = GetIt.instance;

void _registerLazySingleton<T extends Object>(FactoryFunc<T> factoryFunc) {
  getIt.registerLazySingleton<T>(factoryFunc);
}

void _registerSingleton<T extends Object>(T object) {
  getIt.registerSingleton(object);
}

Future<void> registerDependencies() async {
  _database();
  await _sharedPreferences();
  _services();
  _providers();
  _repositories();
  _useCases();
  _cubits();
}

void _database() {
  _registerLazySingleton(Database.defaults);
}

Future<void> _sharedPreferences() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  _registerSingleton(preferences);
}

void _services() {
  _registerLazySingleton<NavigationService>(NavigationServiceImpl.new);
  _registerLazySingleton<NotificationService>(NotificationServiceImpl.new);
}

void _providers() {
  _registerLazySingleton<GeneratedColorProvider>(
    () => DriftGeneratedColorProvider(db: getIt()),
  );
  _registerLazySingleton<SettingsThemeLocalProvider>(
    () => SharedPreferencesSettingsThemeProvider(
      sharedPreferences: getIt(),
    ),
  );
}

void _repositories() {
  _registerLazySingleton<GeneratedColorRepository>(
    () => GeneratedColorRepositoryImpl(provider: getIt()),
  );
  _registerLazySingleton<SettingsThemeRepository>(
    () => SettingsThemeRepositoryImpl(provider: getIt()),
  );
}

void _useCases() {
  _registerLazySingleton(
    () => GetHistoryUseCase(repository: getIt()),
  );

  _registerLazySingleton(() => ClearHistoryUseCase(repository: getIt()));

  _registerLazySingleton(() => SaveGeneratedColorUseCase(repository: getIt()));

  _registerLazySingleton(GenerateColorUseCase.new);

  _registerLazySingleton(() => SetThemeUseCase(repository: getIt()));
  _registerLazySingleton(() => GetThemeUseCase(repository: getIt()));
}

void _cubits() {
  _registerLazySingleton(
    () => ColorGeneratorCubit(
      getGeneratedColorsHistoryUseCase: getIt(),
      saveGeneratedColorUseCase: getIt(),
      generateColorUseCase: getIt(),
      clearHistoryUseCase: getIt(),
      notificationService: getIt(),
    ),
  );

  _registerLazySingleton(
    () => SettingsCubit(
      notificationService: getIt(),
      setThemeUseCase: getIt(),
      getThemeUseCase: getIt(),
    ),
  );
}
