// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $GeneratedColorsTable extends GeneratedColors
    with TableInfo<$GeneratedColorsTable, GeneratedColorModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeneratedColorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _colorARGB32Meta = const VerificationMeta(
    'colorARGB32',
  );
  @override
  late final GeneratedColumn<int> colorARGB32 = GeneratedColumn<int>(
    'color_a_r_g_b32',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtUnixMeta = const VerificationMeta(
    'createdAtUnix',
  );
  @override
  late final GeneratedColumn<int> createdAtUnix = GeneratedColumn<int>(
    'created_at_unix',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, colorARGB32, createdAtUnix];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'generated_colors';
  @override
  VerificationContext validateIntegrity(
    Insertable<GeneratedColorModel> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('color_a_r_g_b32')) {
      context.handle(
        _colorARGB32Meta,
        colorARGB32.isAcceptableOrUnknown(
          data['color_a_r_g_b32']!,
          _colorARGB32Meta,
        ),
      );
    } else if (isInserting) {
      context.missing(_colorARGB32Meta);
    }
    if (data.containsKey('created_at_unix')) {
      context.handle(
        _createdAtUnixMeta,
        createdAtUnix.isAcceptableOrUnknown(
          data['created_at_unix']!,
          _createdAtUnixMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_createdAtUnixMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeneratedColorModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeneratedColorModel(
      colorARGB32: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}color_a_r_g_b32'],
      )!,
      createdAtUnix: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at_unix'],
      )!,
    );
  }

  @override
  $GeneratedColorsTable createAlias(String alias) {
    return $GeneratedColorsTable(attachedDatabase, alias);
  }
}

class GeneratedColorsCompanion extends UpdateCompanion<GeneratedColorModel> {
  final Value<int> id;
  final Value<int> colorARGB32;
  final Value<int> createdAtUnix;
  const GeneratedColorsCompanion({
    this.id = const Value.absent(),
    this.colorARGB32 = const Value.absent(),
    this.createdAtUnix = const Value.absent(),
  });
  GeneratedColorsCompanion.insert({
    this.id = const Value.absent(),
    required int colorARGB32,
    required int createdAtUnix,
  }) : colorARGB32 = Value(colorARGB32),
       createdAtUnix = Value(createdAtUnix);
  static Insertable<GeneratedColorModel> custom({
    Expression<int>? id,
    Expression<int>? colorARGB32,
    Expression<int>? createdAtUnix,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (colorARGB32 != null) 'color_a_r_g_b32': colorARGB32,
      if (createdAtUnix != null) 'created_at_unix': createdAtUnix,
    });
  }

  GeneratedColorsCompanion copyWith({
    Value<int>? id,
    Value<int>? colorARGB32,
    Value<int>? createdAtUnix,
  }) {
    return GeneratedColorsCompanion(
      id: id ?? this.id,
      colorARGB32: colorARGB32 ?? this.colorARGB32,
      createdAtUnix: createdAtUnix ?? this.createdAtUnix,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (colorARGB32.present) {
      map['color_a_r_g_b32'] = Variable<int>(colorARGB32.value);
    }
    if (createdAtUnix.present) {
      map['created_at_unix'] = Variable<int>(createdAtUnix.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeneratedColorsCompanion(')
          ..write('id: $id, ')
          ..write('colorARGB32: $colorARGB32, ')
          ..write('createdAtUnix: $createdAtUnix')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $GeneratedColorsTable generatedColors = $GeneratedColorsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [generatedColors];
}

typedef $$GeneratedColorsTableCreateCompanionBuilder =
    GeneratedColorsCompanion Function({
      Value<int> id,
      required int colorARGB32,
      required int createdAtUnix,
    });
typedef $$GeneratedColorsTableUpdateCompanionBuilder =
    GeneratedColorsCompanion Function({
      Value<int> id,
      Value<int> colorARGB32,
      Value<int> createdAtUnix,
    });

class $$GeneratedColorsTableFilterComposer
    extends Composer<_$Database, $GeneratedColorsTable> {
  $$GeneratedColorsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get colorARGB32 => $composableBuilder(
    column: $table.colorARGB32,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAtUnix => $composableBuilder(
    column: $table.createdAtUnix,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GeneratedColorsTableOrderingComposer
    extends Composer<_$Database, $GeneratedColorsTable> {
  $$GeneratedColorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get colorARGB32 => $composableBuilder(
    column: $table.colorARGB32,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAtUnix => $composableBuilder(
    column: $table.createdAtUnix,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GeneratedColorsTableAnnotationComposer
    extends Composer<_$Database, $GeneratedColorsTable> {
  $$GeneratedColorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get colorARGB32 => $composableBuilder(
    column: $table.colorARGB32,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAtUnix => $composableBuilder(
    column: $table.createdAtUnix,
    builder: (column) => column,
  );
}

class $$GeneratedColorsTableTableManager
    extends
        RootTableManager<
          _$Database,
          $GeneratedColorsTable,
          GeneratedColorModel,
          $$GeneratedColorsTableFilterComposer,
          $$GeneratedColorsTableOrderingComposer,
          $$GeneratedColorsTableAnnotationComposer,
          $$GeneratedColorsTableCreateCompanionBuilder,
          $$GeneratedColorsTableUpdateCompanionBuilder,
          (
            GeneratedColorModel,
            BaseReferences<
              _$Database,
              $GeneratedColorsTable,
              GeneratedColorModel
            >,
          ),
          GeneratedColorModel,
          PrefetchHooks Function()
        > {
  $$GeneratedColorsTableTableManager(_$Database db, $GeneratedColorsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GeneratedColorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GeneratedColorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GeneratedColorsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> colorARGB32 = const Value.absent(),
                Value<int> createdAtUnix = const Value.absent(),
              }) => GeneratedColorsCompanion(
                id: id,
                colorARGB32: colorARGB32,
                createdAtUnix: createdAtUnix,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int colorARGB32,
                required int createdAtUnix,
              }) => GeneratedColorsCompanion.insert(
                id: id,
                colorARGB32: colorARGB32,
                createdAtUnix: createdAtUnix,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GeneratedColorsTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $GeneratedColorsTable,
      GeneratedColorModel,
      $$GeneratedColorsTableFilterComposer,
      $$GeneratedColorsTableOrderingComposer,
      $$GeneratedColorsTableAnnotationComposer,
      $$GeneratedColorsTableCreateCompanionBuilder,
      $$GeneratedColorsTableUpdateCompanionBuilder,
      (
        GeneratedColorModel,
        BaseReferences<_$Database, $GeneratedColorsTable, GeneratedColorModel>,
      ),
      GeneratedColorModel,
      PrefetchHooks Function()
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$GeneratedColorsTableTableManager get generatedColors =>
      $$GeneratedColorsTableTableManager(_db, _db.generatedColors);
}
