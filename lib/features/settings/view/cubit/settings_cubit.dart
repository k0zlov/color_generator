import 'package:bloc/bloc.dart';
import 'package:color_generator/core/notifications/notification_service.dart';
import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/domain/use_cases/get_theme_use_case.dart';
import 'package:color_generator/features/settings/domain/use_cases/set_theme_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final SetThemeUseCase setThemeUseCase;
  final GetThemeUseCase getThemeUseCase;
  final NotificationService notificationService;

  SettingsCubit({
    required this.notificationService,
    required this.setThemeUseCase,
    required this.getThemeUseCase,
  }) : super(const SettingsState());

  Future<void> initialize() async {
    final Result<SettingsTheme?> result = await getThemeUseCase(
      const NoParams(),
    );

    result.fold(
      (_) {
        notificationService.showError('Could not fetch saved theme.');
      },
      (entity) {
        if (entity == null) return;

        emit(state.copyWith(theme: entity));
      },
    );
  }

  Future<void> setThemeMode(SettingsThemeMode mode) async {
    emit(state.copyWith(theme: state.theme.copyWith(mode: mode)));

    final Result<void> result = await setThemeUseCase(
      SetThemeParams(entity: state.theme),
    );

    if (result.isLeft()) {
      notificationService.showError('Could not save theme.');
    }
  }
}
