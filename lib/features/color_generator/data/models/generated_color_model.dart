import 'dart:ui';

import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_color_model.freezed.dart';

part 'generated_color_model.g.dart';

@freezed
abstract class GeneratedColorModel with _$GeneratedColorModel {
  const factory GeneratedColorModel({
    required int colorARGB32,
    required int createdAtUnix,
  }) = _GeneratedColorModel;

  const GeneratedColorModel._();

  factory GeneratedColorModel.fromEntity(GeneratedColor entity) {
    return GeneratedColorModel(
      colorARGB32: entity.color.toARGB32(),
      createdAtUnix: entity.createdAt.millisecondsSinceEpoch,
    );
  }

  factory GeneratedColorModel.fromJson(Map<String, dynamic> json) =>
      _$GeneratedColorModelFromJson(json);

  GeneratedColor toEntity() => GeneratedColor(
    color: Color(colorARGB32),
    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAtUnix),
  );
}
