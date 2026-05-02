import 'package:color_generator/core/database/tables/generated_colors.dart';
import 'package:color_generator/features/color_generator/data/models/generated_color_model.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    GeneratedColors,
  ],
)
final class Database extends _$Database {
  @override
  int get schemaVersion => 1;

  /// Keeping a custom constructor is useful for unit tests which may want to
  /// open an in-memory database only.
  Database(super.e);

  Database.defaults() : super(driftDatabase(name: 'app_db'));
}
