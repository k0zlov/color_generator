import 'package:color_generator/core/core.dart';
import 'package:flutter/material.dart';

class FloatingBottomAppBarItem extends StatelessWidget {
  const FloatingBottomAppBarItem({
    required this.isSelected,
    required this.onPressed,
    required this.data,
    super.key,
  });

  final bool isSelected;
  final FloatingBottomAppBarItemData data;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final MotionTokens motion = context.motion;

    final BottomNavigationBarThemeData barTheme =
        context.theme.bottomNavigationBarTheme;

    final TextStyle textStyle =
        (isSelected
            ? barTheme.selectedLabelStyle
            : barTheme.unselectedLabelStyle) ??
        const TextStyle();

    final IconThemeData iconTheme =
        (isSelected
            ? barTheme.selectedIconTheme
            : barTheme.unselectedIconTheme) ??
        const IconThemeData.fallback();

    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: IconTheme(
        data: iconTheme,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieIcon(data.icon, animate: isSelected),
            AnimatedDefaultTextStyle(
              style: textStyle,
              duration: motion.durationShort,
              child: Text(data.title),
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingBottomAppBarItemData {
  final LottieIconData icon;
  final String title;

  const FloatingBottomAppBarItemData({required this.title, required this.icon});
}
