// ignore_for_file: avoid_returning_widgets

import 'package:color_generator/application.dart';
import 'package:color_generator/core/notifications/notification_service.dart';
import 'package:color_generator/core/widgets/screens/navigation_shell_screen.dart';
import 'package:color_generator/dependencies_injection.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/features/color_generator/view/screens/color_generator_screen.dart';
import 'package:color_generator/features/color_generator/view/screens/generated_colors_history_screen.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:color_generator/features/settings/view/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScreenFactory {
  const ScreenFactory._();

  static Widget renderApplication() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ColorGeneratorCubit>()..initialize()),
        BlocProvider(create: (_) => getIt<SettingsCubit>()..initialize()),
      ],
      child: Application(notificationService: getIt<NotificationService>()),
    );
  }

  static Widget renderColorGeneratorPage() {
    return const ColorGeneratorScreen();
  }

  static Widget renderHistoryPage() {
    return const GeneratedColorsHistoryScreen();
  }

  static Widget renderSettingsPage() {
    return const SettingsScreen();
  }

  static Widget renderNavigationShell(StatefulNavigationShell navigationShell) {
    return NavigationShellScreen(navigationShell: navigationShell);
  }
}
