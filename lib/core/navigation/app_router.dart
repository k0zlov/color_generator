import 'package:color_generator/core/navigation/navigation.dart';
import 'package:color_generator/core/screen_factory/screen_factory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final Map<String, Widget Function(BuildContext, GoRouterState)>
  _routeMap = {
    AppRoutePaths.colorGenerator: (_, _) =>
        ScreenFactory.renderColorGeneratorPage(),
    AppRoutePaths.settings: (_, _) => ScreenFactory.renderSettingsPage(),
    AppRoutePaths.history: (_, _) => ScreenFactory.renderHistoryPage(),
  };

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoutePaths.colorGenerator,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, _, navigationShell) {
          return ScreenFactory.renderNavigationShell(navigationShell);
        },
        branches: _routeMap.entries.map((entry) {
          return StatefulShellBranch(
            routes: [GoRoute(path: entry.key, builder: entry.value)],
          );
        }).toList(),
      ),
    ],
    errorBuilder: (_, _) => const Scaffold(
      body: Center(child: Text('Route not found')),
    ),
  );
}
