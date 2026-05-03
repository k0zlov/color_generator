import 'package:color_generator/core/navigation/app_route_paths.dart';
import 'package:color_generator/core/navigation/screen_factory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter createRouter({required GlobalKey<NavigatorState> navigatorKey}) {
  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoutePaths.colorGenerator,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, _, navigationShell) {
          return ScreenFactory.renderNavigationShell(navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.colorGenerator,
                builder: (_, _) {
                  return ScreenFactory.renderColorGeneratorPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.settings,
                builder: (_, _) {
                  return ScreenFactory.renderSettingsPage();
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutePaths.history,
                builder: (_, _) {
                  return ScreenFactory.renderHistoryPage();
                },
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (_, _) {
      return ScreenFactory.renderNotFoundPage();
    },
  );
}
