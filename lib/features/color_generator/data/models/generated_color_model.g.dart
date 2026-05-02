// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generated_color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneratedColorModel _$GeneratedColorModelFromJson(Map<String, dynamic> json) =>
    _GeneratedColorModel(
      id: json['id'] as String,
      red: (json['red'] as num).toInt(),
      blue: (json['blue'] as num).toInt(),
      green: (json['green'] as num).toInt(),
      createdAtUnix: (json['createdAtUnix'] as num).toInt(),
    );

Map<String, dynamic> _$GeneratedColorModelToJson(
  _GeneratedColorModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'red': instance.red,
  'blue': instance.blue,
  'green': instance.green,
  'createdAtUnix': instance.createdAtUnix,
};
