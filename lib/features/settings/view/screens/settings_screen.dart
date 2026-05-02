import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();

    SettingsThemeMode getSystemThemeMode() {
      final currentBrightness = MediaQuery.of(
        context,
      ).platformBrightness;

      return currentBrightness == .light ? .light : .dark;
    }

    final SettingsThemeMode systemMode = getSystemThemeMode();

    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (_, state) {
        final SettingsThemeMode mode = state.theme.mode;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Use system theme'),
                      Checkbox(
                        value: mode.isSystem,
                        onChanged: (value) {
                          if (value == null) return;

                          cubit.setThemeMode(value ? .system : systemMode);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Dark theme'),
                      Switch(
                        value: mode.isSystem ? systemMode.isDark : mode.isDark,
                        onChanged: mode.isSystem
                            ? null
                            : (value) {
                                cubit.setThemeMode(value ? .dark : .light);
                              },
                      ),
                    ],
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
