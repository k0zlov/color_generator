import 'package:color_generator/core/navigation/navigation_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract interface class NavigationService {
  Future<T?> navigateTo<T>(NavigationRoute route);

  void replaceWith(NavigationRoute route);

  void goBack<T>([T? result]);
}

final class NavigationServiceImpl implements NavigationService {
  final GlobalKey<NavigatorState> navigatorKey;

  BuildContext get context {
    final BuildContext? context = navigatorKey.currentContext;

    if (context == null) {
      throw Exception(
        'The BuildContext from global navigation key was not found.'
        'Ensure that navigation key is specified in the router.',
      );
    }

    return context;
  }

  NavigationServiceImpl({required this.navigatorKey});

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
