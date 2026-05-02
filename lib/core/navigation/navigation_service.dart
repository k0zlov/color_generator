import 'package:color_generator/core/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract interface class NavigationService {
  Future<T?> navigateTo<T>(NavigationRoute route);

  void replaceWith(NavigationRoute route);

  void goBack<T>([T? result]);
}

abstract class NavigationRoute {
  String get path;

  Object? get arguments;

  const NavigationRoute();
}

class NavigationServiceImpl implements NavigationService {
  BuildContext get context {
    final BuildContext? context = AppRouter.navigatorKey.currentContext;

    if (context == null) {
      throw Exception(
        'The BuildContext from global navigation key was not found.'
        'Ensure that navigation key is specified in the router.',
      );
    }

    return context;
  }

  @override
  void goBack<T>([T? result]) {
    if (!context.canPop()) return;

    context.pop(result);
  }

  @override
  Future<T?> navigateTo<T>(NavigationRoute route) {
    return context.push<T>(route.path, extra: route.arguments);
  }

  @override
  void replaceWith(NavigationRoute route) {
    context.pushReplacement(route.path, extra: route.arguments);
  }
}
