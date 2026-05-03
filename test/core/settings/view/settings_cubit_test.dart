import 'package:bloc_test/bloc_test.dart';
import 'package:color_generator/core/core.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/domain/use_cases/get_theme_use_case.dart';
import 'package:color_generator/features/settings/domain/use_cases/set_theme_use_case.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class MockSetThemeUseCase extends Mock implements SetThemeUseCase {}

class MockGetThemeUseCase extends Mock implements GetThemeUseCase {}

class MockNotificationService extends Mock implements NotificationService {}

void main() {
  const tTheme = SettingsTheme(mode: SettingsThemeMode.dark);
  const tFailure = CacheFailure(errorMessage: '');

  setUpAll(() {
    registerFallbackValue(NoParams());
    registerFallbackValue(const SetThemeParams(theme: tTheme));
  });

  SettingsCubit createCubit({
    MockGetThemeUseCase? getTheme,
    MockSetThemeUseCase? setTheme,
    MockNotificationService? notification,
  }) {
    return SettingsCubit(
      getThemeUseCase: getTheme ?? MockGetThemeUseCase(),
      setThemeUseCase: setTheme ?? MockSetThemeUseCase(),
      notificationService: notification ?? MockNotificationService(),
    );
  }

  group('initialize', () {
    blocTest<SettingsCubit, SettingsState>(
      'emits state with new theme when getThemeUseCase returns success',
      build: () {
        final getTheme = MockGetThemeUseCase();
        when(
          () => getTheme(any()),
        ).thenAnswer((_) async => const Right(tTheme));

        return createCubit(getTheme: getTheme);
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [const SettingsState(theme: tTheme)],
    );

    blocTest<SettingsCubit, SettingsState>(
      'shows error notification and emits nothing when getThemeUseCase fails',
      build: () {
        final getTheme = MockGetThemeUseCase();
        when(
          () => getTheme(any()),
        ).thenAnswer((_) async => const Left(tFailure));

        return createCubit(getTheme: getTheme);
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [],
      verify: (cubit) {
        verify(() => cubit.notificationService.showError(any())).called(1);
      },
    );
  });

  group('setThemeMode', () {
    const tNewMode = SettingsThemeMode.light;

    blocTest<SettingsCubit, SettingsState>(
      'emits new theme and calls setThemeUseCase',
      build: () {
        final setTheme = MockSetThemeUseCase();
        when(() => setTheme(any())).thenAnswer((_) async => const Right(null));

        return createCubit(setTheme: setTheme);
      },
      act: (cubit) => cubit.setThemeMode(tNewMode),
      expect: () => [
        isA<SettingsState>().having((s) => s.theme.mode, 'mode', tNewMode),
      ],
    );
  });
}
