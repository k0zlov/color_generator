// ignore_for_file: avoid_late_keyword, prefer_match_file_name
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
  late SettingsCubit cubit;
  late MockSetThemeUseCase mockSetThemeUseCase;
  late MockGetThemeUseCase mockGetThemeUseCase;
  late MockNotificationService mockNotificationService;

  const tTheme = SettingsTheme(mode: SettingsThemeMode.dark);
  const tFailure = CacheFailure(errorMessage: '');

  setUpAll(() {
    registerFallbackValue(NoParams());
    registerFallbackValue(const SetThemeParams(theme: tTheme));
  });

  setUp(() {
    mockSetThemeUseCase = MockSetThemeUseCase();
    mockGetThemeUseCase = MockGetThemeUseCase();
    mockNotificationService = MockNotificationService();

    cubit = SettingsCubit(
      notificationService: mockNotificationService,
      setThemeUseCase: mockSetThemeUseCase,
      getThemeUseCase: mockGetThemeUseCase,
    );
  });

  tearDown(() => cubit.close());

  group('initialize', () {
    blocTest<SettingsCubit, SettingsState>(
      'emits state with new theme when getThemeUseCase returns success',
      build: () {
        when(
          () => mockGetThemeUseCase(any()),
        ).thenAnswer((_) async => const Right(tTheme));

        return cubit;
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [
        const SettingsState(theme: tTheme),
      ],
      verify: (_) {
        verify(() => mockGetThemeUseCase(any())).called(1);
      },
    );

    blocTest<SettingsCubit, SettingsState>(
      'shows error notification and emits nothing when getThemeUseCase fails',
      build: () {
        when(
          () => mockGetThemeUseCase(any()),
        ).thenAnswer((_) async => const Left(tFailure));

        return cubit;
      },
      act: (cubit) => cubit.initialize(),
      expect: () => [],
      verify: (_) {
        verify(() => mockNotificationService.showError(any())).called(1);
      },
    );
  });

  group('setThemeMode', () {
    const tNewMode = SettingsThemeMode.light;

    blocTest<SettingsCubit, SettingsState>(
      'emits new theme and calls setThemeUseCase',
      build: () {
        when(
          () => mockSetThemeUseCase(any()),
        ).thenAnswer((_) async => const Right(null));

        return cubit;
      },
      act: (cubit) => cubit.setThemeMode(tNewMode),
      expect: () => [
        isA<SettingsState>().having((s) => s.theme.mode, 'mode', tNewMode),
      ],
      verify: (_) {
        verify(() => mockSetThemeUseCase(any())).called(1);
      },
    );

    blocTest<SettingsCubit, SettingsState>(
      'shows error notification when setThemeUseCase fails',
      build: () {
        when(
          () => mockSetThemeUseCase(any()),
        ).thenAnswer((_) async => const Left(tFailure));

        return cubit;
      },
      act: (cubit) => cubit.setThemeMode(tNewMode),
      expect: () => [
        isA<SettingsState>().having((s) => s.theme.mode, 'mode', tNewMode),
      ],
      verify: (_) {
        verify(() => mockNotificationService.showError(any())).called(1);
      },
    );
  });
}
