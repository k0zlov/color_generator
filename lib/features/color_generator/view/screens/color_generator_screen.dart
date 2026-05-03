import 'package:color_generator/core/core.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:color_generator/features/color_generator/view/cubit/color_generator_cubit.dart';
import 'package:color_generator/features/color_generator/view/widgets/greeting_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorGeneratorScreen extends StatelessWidget {
  const ColorGeneratorScreen({
    required this.cubit,
    super.key,
  });

  final ColorGeneratorCubit cubit;

  @override
  Widget build(BuildContext context) {
    final MotionTokens motion = context.motion;

    return BlocSelector<
      ColorGeneratorCubit,
      ColorGeneratorState,
      GeneratedColor?
    >(
      selector: (state) => state.currentColor,
      builder: (_, GeneratedColor? currentColor) {
        final Color backgroundColor = currentColor?.color ?? Colors.black26;

        final bool showSecondaryText = currentColor == null;

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: AnimatedContainer(
                  duration: motion.durationShort,
                  color: backgroundColor,
                ),
              ),
              GreetingPrompt(
                backgroundColor: backgroundColor,
                showSecondaryText: showSecondaryText,
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
