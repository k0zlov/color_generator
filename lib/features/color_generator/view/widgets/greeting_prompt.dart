import 'package:color_generator/core/core.dart';
import 'package:flutter/material.dart';

class GreetingPrompt extends StatelessWidget {
  const GreetingPrompt({
    required this.backgroundColor,
    required this.showSecondaryText,
    super.key,
  });

  final Color backgroundColor;
  final bool showSecondaryText;

  static const double _offsetAlignmentY = 0.03;
  static const double _secondaryTextAlpha = 0.8;

  @override
  Widget build(BuildContext context) {
    final MotionTokens motion = context.motion;

    final Color contrastColor = backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;

    final TextStyle primaryTextStyle = context.typography.titleLarge.copyWith(
      color: contrastColor,
    );

    final TextStyle secondaryTextStyle = context.typography.labelLarge.copyWith(
      color: contrastColor.withValues(alpha: _secondaryTextAlpha),
    );

    return AnimatedAlign(
      duration: motion.durationShort,
      curve: Curves.easeOut,
      alignment: Alignment(
        0,
        showSecondaryText ? 0 : _offsetAlignmentY,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedDefaultTextStyle(
            style: primaryTextStyle,
            duration: motion.durationShort,
            child: const Text('Hello world!'),
          ),
          AnimatedOpacity(
            opacity: showSecondaryText ? 1 : 0,
            duration: motion.durationShort,
            curve: Curves.easeOut,
            child: AnimatedDefaultTextStyle(
              style: secondaryTextStyle,
              duration: motion.durationShort,
              child: const Text('Tap to generate your first color!'),
            ),
          ),
        ],
      ),
    );
  }
}
