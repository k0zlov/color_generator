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
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _redMeta = const VerificationMeta('red');
  @override
  late final GeneratedColumn<int> red = GeneratedColumn<int>(
    'red',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _blueMeta = const VerificationMeta('blue');
  @override
  late final GeneratedColumn<int> blue = GeneratedColumn<int>(
    'blue',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _greenMeta = const VerificationMeta('green');
  @override
  late final GeneratedColumn<int> green = GeneratedColumn<int>(
    'green',
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
  List<GeneratedColumn> get $columns => [id, red, blue, green, createdAtUnix];
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
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('red')) {
      context.handle(
        _redMeta,
        red.isAcceptableOrUnknown(data['red']!, _redMeta),
      );
    } else if (isInserting) {
      context.missing(_redMeta);
    }
    if (data.containsKey('blue')) {
      context.handle(
        _blueMeta,
        blue.isAcceptableOrUnknown(data['blue']!, _blueMeta),
      );
    } else if (isInserting) {
      context.missing(_blueMeta);
    }
    if (data.containsKey('green')) {
      context.handle(
        _greenMeta,
        green.isAcceptableOrUnknown(data['green']!, _greenMeta),
      );
    } else if (isInserting) {
      context.missing(_greenMeta);
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
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  GeneratedColorModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeneratedColorModel(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      red: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}red'],
      )!,
      blue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}blue'],
      )!,
      green: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}green'],
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
  final Value<String> id;
  final Value<int> red;
  final Value<int> blue;
  final Value<int> green;
  final Value<int> createdAtUnix;
  final Value<int> rowid;
  const GeneratedColorsCompanion({
    this.id = const Value.absent(),
    this.red = const Value.absent(),
    this.blue = const Value.absent(),
    this.green = const Value.absent(),
    this.createdAtUnix = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GeneratedColorsCompanion.insert({
    required String id,
    required int red,
    required int blue,
    required int green,
    required int createdAtUnix,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       red = Value(red),
       blue = Value(blue),
       green = Value(green),
       createdAtUnix = Value(createdAtUnix);
  static Insertable<GeneratedColorModel> custom({
    Expression<String>? id,
    Expression<int>? red,
    Expression<int>? blue,
    Expression<int>? green,
    Expression<int>? createdAtUnix,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (red != null) 'red': red,
      if (blue != null) 'blue': blue,
      if (green != null) 'green': green,
      if (createdAtUnix != null) 'created_at_unix': createdAtUnix,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GeneratedColorsCompanion copyWith({
    Value<String>? id,
    Value<int>? red,
    Value<int>? blue,
    Value<int>? green,
    Value<int>? createdAtUnix,
    Value<int>? rowid,
  }) {
    return GeneratedColorsCompanion(
      id: id ?? this.id,
      red: red ?? this.red,
      blue: blue ?? this.blue,
      green: green ?? this.green,
      createdAtUnix: createdAtUnix ?? this.createdAtUnix,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (red.present) {
      map['red'] = Variable<int>(red.value);
    }
    if (blue.present) {
      map['blue'] = Variable<int>(blue.value);
    }
    if (green.present) {
      map['green'] = Variable<int>(green.value);
    }
    if (createdAtUnix.present) {
      map['created_at_unix'] = Variable<int>(createdAtUnix.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeneratedColorsCompanion(')
          ..write('id: $id, ')
          ..write('red: $red, ')
          ..write('blue: $blue, ')
          ..write('green: $green, ')
          ..write('createdAtUnix: $createdAtUnix, ')
          ..write('rowid: $rowid')
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
      required String id,
      required int red,
      required int blue,
      required int green,
      required int createdAtUnix,
      Value<int> rowid,
    });
typedef $$GeneratedColorsTableUpdateCompanionBuilder =
    GeneratedColorsCompanion Function({
      Value<String> id,
      Value<int> red,
      Value<int> blue,
      Value<int> green,
      Value<int> createdAtUnix,
      Value<int> rowid,
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
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get red => $composableBuilder(
    column: $table.red,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get blue => $composableBuilder(
    column: $table.blue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get green => $composableBuilder(
    column: $table.green,
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
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get red => $composableBuilder(
    column: $table.red,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get blue => $composableBuilder(
    column: $table.blue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get green => $composableBuilder(
    column: $table.green,
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
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get red =>
      $composableBuilder(column: $table.red, builder: (column) => column);

  GeneratedColumn<int> get blue =>
      $composableBuilder(column: $table.blue, builder: (column) => column);

  GeneratedColumn<int> get green =>
      $composableBuilder(column: $table.green, builder: (column) => column);

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
                Value<String> id = const Value.absent(),
                Value<int> red = const Value.absent(),
                Value<int> blue = const Value.absent(),
                Value<int> green = const Value.absent(),
                Value<int> createdAtUnix = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GeneratedColorsCompanion(
                id: id,
                red: red,
                blue: blue,
                green: green,
                createdAtUnix: createdAtUnix,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required int red,
                required int blue,
                required int green,
                required int createdAtUnix,
                Value<int> rowid = const Value.absent(),
              }) => GeneratedColorsCompanion.insert(
                id: id,
                red: red,
                blue: blue,
                green: green,
                createdAtUnix: createdAtUnix,
                rowid: rowid,
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
