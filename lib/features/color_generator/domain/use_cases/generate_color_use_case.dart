import 'dart:math';
import 'dart:ui';

import 'package:color_generator/core/use_case/use_case.dart';
import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/v4.dart';

class GenerateColorUseCase extends UseCase<GeneratedColor, NoParams> {
  @override
  Future<Result<GeneratedColor>> call(NoParams params) async {
    final random = Random();

    int randomizeColorParameter() {
      final int alpha = Color.getAlphaFromOpacity(1);

      return random.nextInt(alpha);
    }

    final newColor = GeneratedColor(
      id: const UuidV4().generate(),
      red: randomizeColorParameter(),
      blue: randomizeColorParameter(),
      green: randomizeColorParameter(),
      createdAt: DateTime.timestamp(),
    );

    return Right(newColor);
  }
}
