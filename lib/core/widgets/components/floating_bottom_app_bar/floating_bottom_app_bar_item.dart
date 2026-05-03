import 'package:color_generator/core/theme/extensions/build_context_x.dart';
import 'package:color_generator/core/widgets/primitives/lottie_icon.dart';
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
    final motion = context.motion;

    final barTheme = context.theme.bottomNavigationBarTheme;

    final textStyle = isSelected
        ? barTheme.selectedLabelStyle
        : barTheme.unselectedLabelStyle;

    final iconTheme = isSelected
        ? barTheme.selectedIconTheme
        : barTheme.unselectedIconTheme;

    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: IconTheme(
        data: iconTheme ?? const IconThemeData.fallback(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieIcon(data.icon, animate: isSelected),
            AnimatedDefaultTextStyle(
              style: textStyle ?? const TextStyle(),
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
