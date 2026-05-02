import 'package:color_generator/core/widgets/components/floating_bottom_app_bar/floating_bottom_app_bar_item.dart';
import 'package:color_generator/core/widgets/extensions/build_context_x.dart';
import 'package:color_generator/core/widgets/primitives/blur.dart';
import 'package:flutter/material.dart';

class FloatingBottomAppBar extends StatelessWidget {
  const FloatingBottomAppBar({
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.padding = const EdgeInsets.all(4),
    this.opacity = 0.85,
    this.margin = const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    this.backgroundColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    super.key,
  });

  final double opacity;
  final Color? backgroundColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final int currentIndex;
  final void Function(int index) onTap;
  final List<FloatingBottomAppBarItemData> items;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final barTheme = theme.bottomNavigationBarTheme;

    final Color? effectiveBackgroundColor =
        (backgroundColor ?? barTheme.backgroundColor)?.withValues(
          alpha: opacity,
        );

    return Padding(
      padding: margin,
      child: Blur(
        borderRadius: borderRadius,
        child: Container(
          height: kBottomNavigationBarHeight,
          decoration: BoxDecoration(
            color: effectiveBackgroundColor,
            borderRadius: borderRadius,
          ),
          padding: padding,
          child: LayoutBuilder(
            builder: (_, constraints) {
              final maxHeight = constraints.maxHeight;
              final itemWidth = constraints.maxWidth / items.length;

              return Stack(
                fit: StackFit.expand,
                children: [
                  AnimatedPositioned(
                    left: itemWidth * currentIndex,
                    width: itemWidth,
                    height: maxHeight,
                    duration: const Duration(milliseconds: 220),
                    curve: Curves.fastEaseInToSlowEaseOut,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: borderRadius,
                        color: theme.colorScheme.primaryContainer.withValues(
                          alpha: 0.8,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < items.length; i++) ...{
                        Expanded(
                          child: FloatingBottomAppBarItem(
                            onPressed: () {
                              if (i == currentIndex) return;
                              onTap(i);
                            },
                            data: items[i],
                            isSelected: i == currentIndex,
                          ),
                        ),
                      },
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
