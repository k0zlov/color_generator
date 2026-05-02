import 'package:collection/collection.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_theme_model.freezed.dart';

part 'settings_theme_model.g.dart';

@freezed
abstract class SettingsThemeModel with _$SettingsThemeModel {
  const factory SettingsThemeModel({required String mode}) =
      _SettingsThemeModel;

  factory SettingsThemeModel.fromEntity(SettingsTheme entity) {
    return SettingsThemeModel(mode: entity.mode.name);
  }

  factory SettingsThemeModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsThemeModelFromJson(json);

  const SettingsThemeModel._();

  SettingsTheme toEntity() => SettingsTheme(
    mode: .values.firstWhereOrNull((e) => e.name == mode) ?? .system,
  );
}
