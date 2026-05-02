import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/settings/data/models/settings_theme_model.dart';
import 'package:color_generator/features/settings/data/providers/settings_theme_local_provider.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/domain/repositories/settings_theme_repository.dart';

class SettingsThemeRepositoryImpl implements SettingsThemeRepository {
  final SettingsThemeLocalProvider provider;

  const SettingsThemeRepositoryImpl({required this.provider});

  @override
  Future<Result<SettingsTheme?>> getTheme() async {
    final result = await provider.getTheme();

    return result.map((model) => model?.toEntity());
  }

  @override
  Future<Result<void>> saveTheme(SettingsTheme entity) {
    return provider.saveTheme(SettingsThemeModel.fromEntity(entity));
  }
}
