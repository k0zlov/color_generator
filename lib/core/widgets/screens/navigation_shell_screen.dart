import 'dart:ui';

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
                    stops: [0.0, 0.4],
                  ).createShader(bounds);
                },
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.23),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: FloatingBottomAppBar(
        backgroundColor: Colors.grey,
        currentIndex: navigationShell.currentIndex,
        items: const [
          FloatingBottomAppBarItemData(
            icon: Icons.color_lens,
            title: 'Generator',
          ),
          FloatingBottomAppBarItemData(icon: Icons.settings, title: 'Settings'),
          FloatingBottomAppBarItemData(icon: Icons.history, title: 'History'),
        ],
        onTap: navigationShell.goBranch,
      ),
    );
  }
}
