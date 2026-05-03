import 'package:color_generator/features/color_generator/data/models/generated_color_model.dart';
import 'package:drift/drift.dart';

@UseRowClass(GeneratedColorModel)
class GeneratedColors extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get colorARGB32 => integer()();

  IntColumn get createdAtUnix => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
