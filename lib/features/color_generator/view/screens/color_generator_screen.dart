import 'package:color_generator/core/widgets/extensions/build_context_x.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/utils/extensions/color_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorGeneratorScreen extends StatelessWidget {
  const ColorGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ColorGeneratorCubit>();
    final primaryTextStyle = context.textTheme.titleLarge ?? const TextStyle();
    final secondaryTextStyle =
        context.textTheme.labelLarge ?? const TextStyle();

    return BlocBuilder<ColorGeneratorCubit, ColorGeneratorState>(
      builder: (_, state) {
        final GeneratedColor? currentColor = state.currentColor;

        final Color backgroundColor = currentColor?.toColor ?? Colors.black26;

        final bool showSecondaryText = currentColor == null;

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  color: backgroundColor,
                ),
              ),
              SafeArea(
                child: AnimatedAlign(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOut,
                  alignment: Alignment(0.0, showSecondaryText ? 0.0 : 0.03),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedDefaultTextStyle(
                        style: primaryTextStyle.copyWith(
                          color: backgroundColor.contrastColor,
                        ),
                        duration: const Duration(milliseconds: 220),
                        child: const Text('Hello world!'),
                      ),
                      AnimatedOpacity(
                        opacity: showSecondaryText ? 1 : 0,
                        duration: const Duration(milliseconds: 220),
                        curve: Curves.easeOut,
                        child: AnimatedDefaultTextStyle(
                          style: secondaryTextStyle.copyWith(
                            color: backgroundColor.contrastColor.withValues(
                              alpha: 0.8,
                            ),
                          ),
                          duration: const Duration(milliseconds: 220),
                          child: const Text(
                            'Tap to generate your first color!',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: GestureDetector(onTap: cubit.generateNewColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
