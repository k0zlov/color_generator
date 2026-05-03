import 'dart:ui';

import 'package:color_generator/core/resources/lottie/lottie_icons.dart';
import 'package:color_generator/core/widgets/components/floating_bottom_app_bar/floating_bottom_app_bar.dart';
import 'package:color_generator/core/widgets/components/floating_bottom_app_bar/floating_bottom_app_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationShellScreen extends StatelessWidget {
  const NavigationShellScreen({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  static const double _blurSigma = 8.0;
  static const double _gradientStart = 0.0;
  static const double _gradientEnd = 0.4;
  static const double _backdropAlpha = 0.23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: navigationShell),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: kBottomNavigationBarHeight,
            child: IgnorePointer(
              child: ShaderMask(
                blendMode: BlendMode.dstIn,
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                    stops: [_gradientStart, _gradientEnd],
                  ).createShader(bounds);
                },
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: _blurSigma,
                    sigmaY: _blurSigma,
                  ),
                  child: Container(
                    color: Colors.black.withValues(alpha: _backdropAlpha),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: FloatingBottomAppBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          FloatingBottomAppBarItemData(
            icon: LottieIcons.home,
            title: 'Generator',
          ),
          FloatingBottomAppBarItemData(
            icon: LottieIcons.settings,
            title: 'Settings',
          ),
          FloatingBottomAppBarItemData(
            icon: LottieIcons.history,
            title: 'History',
          ),
        ],
        onTap: navigationShell.goBranch,
      ),
    );
  }
}
