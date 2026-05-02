import 'dart:async';

import 'package:color_generator/core/navigation/app_router.dart';
import 'package:color_generator/core/notifications/notification_service.dart';
import 'package:color_generator/core/theme/app_theme.dart';
import 'package:color_generator/core/widgets/extensions/build_context_x.dart';
import 'package:color_generator/features/settings/domain/entities/settings_theme.dart';
import 'package:color_generator/features/settings/view/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatefulWidget {
  const Application({required this.notificationService, super.key});

  final NotificationService notificationService;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  StreamSubscription<String>? _errorSubscription;

  @override
  void initState() {
    super.initState();

    _errorSubscription = widget.notificationService.errorStream.listen(
      (msg) {
        if (!mounted) return;

        final context = AppRouter.navigatorKey.currentContext;

        if (context == null) return;

        final colorScheme = context.theme.colorScheme;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: colorScheme.errorContainer,
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.horizontal,
            content: DefaultTextStyle.merge(
              style: TextStyle(color: colorScheme.onErrorContainer),
              child: Text(msg),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (_, state) {
        final ThemeMode themeMode = switch (state.theme.mode) {
          SettingsThemeMode.light => ThemeMode.light,
          SettingsThemeMode.dark => ThemeMode.dark,
          SettingsThemeMode.system => ThemeMode.system,
        };

        return MaterialApp.router(
          title: 'Color generator',
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: themeMode,
        );
      },
    );
  }

  @override
  void dispose() {
    _errorSubscription?.cancel();
    super.dispose();
  }
}
