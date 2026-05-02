import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_color.freezed.dart';

@freezed
abstract class GeneratedColor with _$GeneratedColor {
  Color get toColor {
    final alpha = Color.getAlphaFromOpacity(1);

    return Color.fromARGB(alpha, red, green, blue);
  }

  const factory GeneratedColor({
    required String id,
    required int red,
    required int blue,
    required int green,
    required DateTime createdAt,
  }) = _GeneratedColor;

  const GeneratedColor._();
}
