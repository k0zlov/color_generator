import 'package:color_generator/features/color_generator/data/models/generated_color_model.dart';
import 'package:drift/drift.dart';

@UseRowClass(GeneratedColorModel)
class GeneratedColors extends Table {
  TextColumn get id => text()();

  IntColumn get red => integer()();

  IntColumn get blue => integer()();

  IntColumn get green => integer()();

  IntColumn get createdAtUnix => integer()();
}
