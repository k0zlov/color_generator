import 'package:color_generator/features/color_generator/domain/entities/generated_color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated_color_model.freezed.dart';

part 'generated_color_model.g.dart';

@freezed
abstract class GeneratedColorModel with _$GeneratedColorModel {
  const factory GeneratedColorModel({
    required String id,
    required int red,
    required int blue,
    required int green,
    required int createdAtUnix,
  }) = _GeneratedColorModel;

  const GeneratedColorModel._();

  factory GeneratedColorModel.fromEntity(GeneratedColor entity) {
    return GeneratedColorModel(
      id: entity.id,
      red: entity.red,
      blue: entity.blue,
      green: entity.green,
      createdAtUnix: entity.createdAt.millisecondsSinceEpoch,
    );
  }

  factory GeneratedColorModel.fromJson(Map<String, dynamic> json) =>
      _$GeneratedColorModelFromJson(json);

  GeneratedColor toEntity() => GeneratedColor(
    id: id,
    red: red,
    blue: blue,
    green: green,
    createdAt: DateTime.fromMillisecondsSinceEpoch(createdAtUnix),
  );
}
