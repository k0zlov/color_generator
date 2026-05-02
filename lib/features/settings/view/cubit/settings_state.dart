part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(SettingsTheme()) SettingsTheme theme,
  }) = _SettingsState;
}
