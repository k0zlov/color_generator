// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneratedColorModel {

 String get id; int get red; int get blue; int get green; int get createdAtUnix;
/// Create a copy of GeneratedColorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedColorModelCopyWith<GeneratedColorModel> get copyWith => _$GeneratedColorModelCopyWithImpl<GeneratedColorModel>(this as GeneratedColorModel, _$identity);

  /// Serializes this GeneratedColorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedColorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.red, red) || other.red == red)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.green, green) || other.green == green)&&(identical(other.createdAtUnix, createdAtUnix) || other.createdAtUnix == createdAtUnix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,red,blue,green,createdAtUnix);

@override
String toString() {
  return 'GeneratedColorModel(id: $id, red: $red, blue: $blue, green: $green, createdAtUnix: $createdAtUnix)';
}


}

/// @nodoc
abstract mixin class $GeneratedColorModelCopyWith<$Res>  {
  factory $GeneratedColorModelCopyWith(GeneratedColorModel value, $Res Function(GeneratedColorModel) _then) = _$GeneratedColorModelCopyWithImpl;
@useResult
$Res call({
 String id, int red, int blue, int green, int createdAtUnix
});




}
/// @nodoc
class _$GeneratedColorModelCopyWithImpl<$Res>
    implements $GeneratedColorModelCopyWith<$Res> {
  _$GeneratedColorModelCopyWithImpl(this._self, this._then);

  final GeneratedColorModel _self;
  final $Res Function(GeneratedColorModel) _then;

/// Create a copy of GeneratedColorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? red = null,Object? blue = null,Object? green = null,Object? createdAtUnix = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as int,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as int,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as int,createdAtUnix: null == createdAtUnix ? _self.createdAtUnix : createdAtUnix // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneratedColorModel].
extension GeneratedColorModelPatterns on GeneratedColorModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratedColorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratedColorModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneratedColorModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratedColorModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int red,  int blue,  int green,  int createdAtUnix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAtUnix);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int red,  int blue,  int green,  int createdAtUnix)  $default,) {final _that = this;
switch (_that) {
case _GeneratedColorModel():
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAtUnix);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int red,  int blue,  int green,  int createdAtUnix)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAtUnix);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneratedColorModel extends GeneratedColorModel {
  const _GeneratedColorModel({required this.id, required this.red, required this.blue, required this.green, required this.createdAtUnix}): super._();
  factory _GeneratedColorModel.fromJson(Map<String, dynamic> json) => _$GeneratedColorModelFromJson(json);

@override final  String id;
@override final  int red;
@override final  int blue;
@override final  int green;
@override final  int createdAtUnix;

/// Create a copy of GeneratedColorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratedColorModelCopyWith<_GeneratedColorModel> get copyWith => __$GeneratedColorModelCopyWithImpl<_GeneratedColorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratedColorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedColorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.red, red) || other.red == red)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.green, green) || other.green == green)&&(identical(other.createdAtUnix, createdAtUnix) || other.createdAtUnix == createdAtUnix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,red,blue,green,createdAtUnix);

@override
String toString() {
  return 'GeneratedColorModel(id: $id, red: $red, blue: $blue, green: $green, createdAtUnix: $createdAtUnix)';
}


}

/// @nodoc
abstract mixin class _$GeneratedColorModelCopyWith<$Res> implements $GeneratedColorModelCopyWith<$Res> {
  factory _$GeneratedColorModelCopyWith(_GeneratedColorModel value, $Res Function(_GeneratedColorModel) _then) = __$GeneratedColorModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int red, int blue, int green, int createdAtUnix
});




}
/// @nodoc
class __$GeneratedColorModelCopyWithImpl<$Res>
    implements _$GeneratedColorModelCopyWith<$Res> {
  __$GeneratedColorModelCopyWithImpl(this._self, this._then);

  final _GeneratedColorModel _self;
  final $Res Function(_GeneratedColorModel) _then;

/// Create a copy of GeneratedColorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? red = null,Object? blue = null,Object? green = null,Object? createdAtUnix = null,}) {
  return _then(_GeneratedColorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as int,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as int,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as int,createdAtUnix: null == createdAtUnix ? _self.createdAtUnix : createdAtUnix // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
