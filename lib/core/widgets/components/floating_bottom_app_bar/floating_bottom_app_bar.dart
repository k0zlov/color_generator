import 'package:color_generator/core/core.dart';
import 'package:flutter/material.dart';

class FloatingBottomAppBar extends StatelessWidget {
  const FloatingBottomAppBar({
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.padding = _defaultPadding,
    this.opacity = _defaultOpacity,
    this.margin = _defaultMargin,
    this.backgroundColor,
    this.borderRadius = _defaultBorderRadius,
    super.key,
  });

  static const double _defaultOpacity = 0.85;
  static const EdgeInsets _defaultPadding = EdgeInsets.all(4.0);
  static const EdgeInsets _defaultMargin = EdgeInsets.symmetric(
    vertical: 20.0,
    horizontal: 30.0,
  );
  static const BorderRadius _defaultBorderRadius = BorderRadius.all(
    Radius.circular(20.0),
  );

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
    final ThemeData theme = context.theme;
    final BottomNavigationBarThemeData barTheme =
        theme.bottomNavigationBarTheme;

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
          child: _FloatingBarContent(
            currentIndex: currentIndex,
            items: items,
            onTap: onTap,
            borderRadius: borderRadius,
          ),
        ),
      ),
    );
  }
}

class _FloatingBarContent extends StatelessWidget {
  const _FloatingBarContent({
    required this.currentIndex,
    required this.items,
    required this.onTap,
    required this.borderRadius,
  });

  final int currentIndex;
  final List<FloatingBottomAppBarItemData> items;
  final void Function(int) onTap;
  final BorderRadius borderRadius;

  static const double _activeIndicatorAlpha = 0.8;

  @override
  Widget build(BuildContext context) {
    final MotionTokens motion = context.motion;
    final ColorScheme colorScheme = context.colorScheme;

    return LayoutBuilder(
      builder: (_, constraints) {
        final double maxHeight = constraints.maxHeight;
        final double itemWidth = constraints.maxWidth / items.length;

        return Stack(
          fit: StackFit.expand,
          children: [
            _ActiveIndicator(
              currentIndex: currentIndex,
              itemWidth: itemWidth,
              maxHeight: maxHeight,
              duration: motion.durationShort,
              borderRadius: borderRadius,
              color: colorScheme.primaryContainer.withValues(
                alpha: _activeIndicatorAlpha,
              ),
            ),
            _ItemsRow(
              items: items,
              currentIndex: currentIndex,
              onTap: onTap,
            ),
          ],
        );
      },
    );
  }
}

class _ActiveIndicator extends StatelessWidget {
  const _ActiveIndicator({
    required this.currentIndex,
    required this.itemWidth,
    required this.maxHeight,
    required this.duration,
    required this.borderRadius,
    required this.color,
  });

  final int currentIndex;
  final double itemWidth;
  final double maxHeight;
  final Duration duration;
  final BorderRadius borderRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: itemWidth * currentIndex,
      width: itemWidth,
      height: maxHeight,
      duration: duration,
      curve: Curves.fastEaseInToSlowEaseOut,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: color,
        ),
      ),
    );
  }
}

class _ItemsRow extends StatelessWidget {
  const _ItemsRow({
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  final List<FloatingBottomAppBarItemData> items;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < items.length; i++)
          Expanded(
            child: FloatingBottomAppBarItem(
              data: items[i],
              isSelected: i == currentIndex,
              onPressed: () {
                if (i == currentIndex) return;
                onTap(i);
              },
            ),
          ),
      ],
    );
  }
}
