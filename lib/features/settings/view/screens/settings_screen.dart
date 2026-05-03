import 'package:color_generator/core/core.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:color_generator/features/settings/view/widgets/settings_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    required this.cubit,
    super.key,
  });

  final SettingsCubit cubit;

  @override
  Widget build(BuildContext context) {
    SettingsThemeMode getSystemThemeMode() {
      final currentBrightness = context.mediaQuery.platformBrightness;

      return currentBrightness == .light ? .light : .dark;
    }

    final SettingsThemeMode systemMode = getSystemThemeMode();

    return BlocSelector<SettingsCubit, SettingsState, SettingsTheme>(
      selector: (state) => state.theme,
      builder: (_, SettingsTheme theme) {
        final SettingsThemeMode mode = theme.mode;

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Settings'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Column(
                children: [
                  SettingsListItem(
                    title: 'Use system theme',
                    trailing: Checkbox(
                      value: mode.isSystem,
                      onChanged: (value) {
                        if (value == null) return;

                        cubit.setThemeMode(value ? .system : systemMode);
                      },
                    ),
                  ),
                  SettingsListItem(
                    title: 'Dark theme',
                    trailing: Switch(
                      value: mode.isSystem ? systemMode.isDark : mode.isDark,
                      onChanged: mode.isSystem
                          ? null
                          : (value) {
                              cubit.setThemeMode(value ? .dark : .light);
                            },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
