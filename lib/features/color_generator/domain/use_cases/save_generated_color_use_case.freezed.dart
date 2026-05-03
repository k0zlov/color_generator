// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_generated_color_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveGeneratedColorParams {

 GeneratedColor get entity;
/// Create a copy of SaveGeneratedColorParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveGeneratedColorParamsCopyWith<SaveGeneratedColorParams> get copyWith => _$SaveGeneratedColorParamsCopyWithImpl<SaveGeneratedColorParams>(this as SaveGeneratedColorParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveGeneratedColorParams&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'SaveGeneratedColorParams(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $SaveGeneratedColorParamsCopyWith<$Res>  {
  factory $SaveGeneratedColorParamsCopyWith(SaveGeneratedColorParams value, $Res Function(SaveGeneratedColorParams) _then) = _$SaveGeneratedColorParamsCopyWithImpl;
@useResult
$Res call({
 GeneratedColor entity
});




}
/// @nodoc
class _$SaveGeneratedColorParamsCopyWithImpl<$Res>
    implements $SaveGeneratedColorParamsCopyWith<$Res> {
  _$SaveGeneratedColorParamsCopyWithImpl(this._self, this._then);

  final SaveGeneratedColorParams _self;
  final $Res Function(SaveGeneratedColorParams) _then;

/// Create a copy of SaveGeneratedColorParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entity = null,}) {
  return _then(_self.copyWith(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as GeneratedColor,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveGeneratedColorParams].
extension SaveGeneratedColorParamsPatterns on SaveGeneratedColorParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveGeneratedColorParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveGeneratedColorParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveGeneratedColorParams value)  $default,){
final _that = this;
switch (_that) {
case _SaveGeneratedColorParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveGeneratedColorParams value)?  $default,){
final _that = this;
switch (_that) {
case _SaveGeneratedColorParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeneratedColor entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveGeneratedColorParams() when $default != null:
return $default(_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeneratedColor entity)  $default,) {final _that = this;
switch (_that) {
case _SaveGeneratedColorParams():
return $default(_that.entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeneratedColor entity)?  $default,) {final _that = this;
switch (_that) {
case _SaveGeneratedColorParams() when $default != null:
return $default(_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class _SaveGeneratedColorParams implements SaveGeneratedColorParams {
  const _SaveGeneratedColorParams({required this.entity});
  

@override final  GeneratedColor entity;

/// Create a copy of SaveGeneratedColorParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveGeneratedColorParamsCopyWith<_SaveGeneratedColorParams> get copyWith => __$SaveGeneratedColorParamsCopyWithImpl<_SaveGeneratedColorParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveGeneratedColorParams&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'SaveGeneratedColorParams(entity: $entity)';
}


}

/// @nodoc
abstract mixin class _$SaveGeneratedColorParamsCopyWith<$Res> implements $SaveGeneratedColorParamsCopyWith<$Res> {
  factory _$SaveGeneratedColorParamsCopyWith(_SaveGeneratedColorParams value, $Res Function(_SaveGeneratedColorParams) _then) = __$SaveGeneratedColorParamsCopyWithImpl;
@override @useResult
$Res call({
 GeneratedColor entity
});




}
/// @nodoc
class __$SaveGeneratedColorParamsCopyWithImpl<$Res>
    implements _$SaveGeneratedColorParamsCopyWith<$Res> {
  __$SaveGeneratedColorParamsCopyWithImpl(this._self, this._then);

  final _SaveGeneratedColorParams _self;
  final $Res Function(_SaveGeneratedColorParams) _then;

/// Create a copy of SaveGeneratedColorParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(_SaveGeneratedColorParams(
entity: null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as GeneratedColor,
  ));
}


}

// dart format on
