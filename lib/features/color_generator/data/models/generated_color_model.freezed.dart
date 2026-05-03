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

 int get colorARGB32; int get createdAtUnix;
/// Create a copy of GeneratedColorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedColorModelCopyWith<GeneratedColorModel> get copyWith => _$GeneratedColorModelCopyWithImpl<GeneratedColorModel>(this as GeneratedColorModel, _$identity);

  /// Serializes this GeneratedColorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedColorModel&&(identical(other.colorARGB32, colorARGB32) || other.colorARGB32 == colorARGB32)&&(identical(other.createdAtUnix, createdAtUnix) || other.createdAtUnix == createdAtUnix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,colorARGB32,createdAtUnix);

@override
String toString() {
  return 'GeneratedColorModel(colorARGB32: $colorARGB32, createdAtUnix: $createdAtUnix)';
}


}

/// @nodoc
abstract mixin class $GeneratedColorModelCopyWith<$Res>  {
  factory $GeneratedColorModelCopyWith(GeneratedColorModel value, $Res Function(GeneratedColorModel) _then) = _$GeneratedColorModelCopyWithImpl;
@useResult
$Res call({
 int colorARGB32, int createdAtUnix
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
@pragma('vm:prefer-inline') @override $Res call({Object? colorARGB32 = null,Object? createdAtUnix = null,}) {
  return _then(_self.copyWith(
colorARGB32: null == colorARGB32 ? _self.colorARGB32 : colorARGB32 // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int colorARGB32,  int createdAtUnix)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that.colorARGB32,_that.createdAtUnix);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int colorARGB32,  int createdAtUnix)  $default,) {final _that = this;
switch (_that) {
case _GeneratedColorModel():
return $default(_that.colorARGB32,_that.createdAtUnix);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int colorARGB32,  int createdAtUnix)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedColorModel() when $default != null:
return $default(_that.colorARGB32,_that.createdAtUnix);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneratedColorModel extends GeneratedColorModel {
  const _GeneratedColorModel({required this.colorARGB32, required this.createdAtUnix}): super._();
  factory _GeneratedColorModel.fromJson(Map<String, dynamic> json) => _$GeneratedColorModelFromJson(json);

@override final  int colorARGB32;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedColorModel&&(identical(other.colorARGB32, colorARGB32) || other.colorARGB32 == colorARGB32)&&(identical(other.createdAtUnix, createdAtUnix) || other.createdAtUnix == createdAtUnix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,colorARGB32,createdAtUnix);

@override
String toString() {
  return 'GeneratedColorModel(colorARGB32: $colorARGB32, createdAtUnix: $createdAtUnix)';
}


}

/// @nodoc
abstract mixin class _$GeneratedColorModelCopyWith<$Res> implements $GeneratedColorModelCopyWith<$Res> {
  factory _$GeneratedColorModelCopyWith(_GeneratedColorModel value, $Res Function(_GeneratedColorModel) _then) = __$GeneratedColorModelCopyWithImpl;
@override @useResult
$Res call({
 int colorARGB32, int createdAtUnix
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
@override @pragma('vm:prefer-inline') $Res call({Object? colorARGB32 = null,Object? createdAtUnix = null,}) {
  return _then(_GeneratedColorModel(
colorARGB32: null == colorARGB32 ? _self.colorARGB32 : colorARGB32 // ignore: cast_nullable_to_non_nullable
as int,createdAtUnix: null == createdAtUnix ? _self.createdAtUnix : createdAtUnix // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
