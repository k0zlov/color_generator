// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneratedColor {

 String get id; int get red; int get blue; int get green; DateTime get createdAt;
/// Create a copy of GeneratedColor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedColorCopyWith<GeneratedColor> get copyWith => _$GeneratedColorCopyWithImpl<GeneratedColor>(this as GeneratedColor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedColor&&(identical(other.id, id) || other.id == id)&&(identical(other.red, red) || other.red == red)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.green, green) || other.green == green)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,red,blue,green,createdAt);

@override
String toString() {
  return 'GeneratedColor(id: $id, red: $red, blue: $blue, green: $green, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GeneratedColorCopyWith<$Res>  {
  factory $GeneratedColorCopyWith(GeneratedColor value, $Res Function(GeneratedColor) _then) = _$GeneratedColorCopyWithImpl;
@useResult
$Res call({
 String id, int red, int blue, int green, DateTime createdAt
});




}
/// @nodoc
class _$GeneratedColorCopyWithImpl<$Res>
    implements $GeneratedColorCopyWith<$Res> {
  _$GeneratedColorCopyWithImpl(this._self, this._then);

  final GeneratedColor _self;
  final $Res Function(GeneratedColor) _then;

/// Create a copy of GeneratedColor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? red = null,Object? blue = null,Object? green = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as int,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as int,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneratedColor].
extension GeneratedColorPatterns on GeneratedColor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratedColor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratedColor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratedColor value)  $default,){
final _that = this;
switch (_that) {
case _GeneratedColor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratedColor value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratedColor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int red,  int blue,  int green,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedColor() when $default != null:
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int red,  int blue,  int green,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _GeneratedColor():
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int red,  int blue,  int green,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedColor() when $default != null:
return $default(_that.id,_that.red,_that.blue,_that.green,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _GeneratedColor extends GeneratedColor {
  const _GeneratedColor({required this.id, required this.red, required this.blue, required this.green, required this.createdAt}): super._();
  

@override final  String id;
@override final  int red;
@override final  int blue;
@override final  int green;
@override final  DateTime createdAt;

/// Create a copy of GeneratedColor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratedColorCopyWith<_GeneratedColor> get copyWith => __$GeneratedColorCopyWithImpl<_GeneratedColor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedColor&&(identical(other.id, id) || other.id == id)&&(identical(other.red, red) || other.red == red)&&(identical(other.blue, blue) || other.blue == blue)&&(identical(other.green, green) || other.green == green)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,red,blue,green,createdAt);

@override
String toString() {
  return 'GeneratedColor(id: $id, red: $red, blue: $blue, green: $green, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GeneratedColorCopyWith<$Res> implements $GeneratedColorCopyWith<$Res> {
  factory _$GeneratedColorCopyWith(_GeneratedColor value, $Res Function(_GeneratedColor) _then) = __$GeneratedColorCopyWithImpl;
@override @useResult
$Res call({
 String id, int red, int blue, int green, DateTime createdAt
});




}
/// @nodoc
class __$GeneratedColorCopyWithImpl<$Res>
    implements _$GeneratedColorCopyWith<$Res> {
  __$GeneratedColorCopyWithImpl(this._self, this._then);

  final _GeneratedColor _self;
  final $Res Function(_GeneratedColor) _then;

/// Create a copy of GeneratedColor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? red = null,Object? blue = null,Object? green = null,Object? createdAt = null,}) {
  return _then(_GeneratedColor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,red: null == red ? _self.red : red // ignore: cast_nullable_to_non_nullable
as int,blue: null == blue ? _self.blue : blue // ignore: cast_nullable_to_non_nullable
as int,green: null == green ? _self.green : green // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
