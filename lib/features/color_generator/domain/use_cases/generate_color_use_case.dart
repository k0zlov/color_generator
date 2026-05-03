import 'dart:math';
import 'dart:ui';

import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:fpdart/fpdart.dart';

class GenerateColorUseCase extends UseCase<GeneratedColor, NoParams> {
  @override
  Future<Result<GeneratedColor>> call(_) async {
    final Random random = Random();

    final int alpha = Color.getAlphaFromOpacity(1);

    int randomizeColorParameter() {
      return random.nextInt(alpha);
    }

    final GeneratedColor newColor = GeneratedColor(
      color: Color.fromARGB(
        alpha,
        randomizeColorParameter(),
        randomizeColorParameter(),
        randomizeColorParameter(),
      ),
      createdAt: DateTime.timestamp(),
    );

    return Right(newColor);
  }
}
