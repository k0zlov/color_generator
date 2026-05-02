// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_history_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetHistoryParams {

 int get page;
/// Create a copy of GetHistoryParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHistoryParamsCopyWith<GetHistoryParams> get copyWith => _$GetHistoryParamsCopyWithImpl<GetHistoryParams>(this as GetHistoryParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHistoryParams&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'GetHistoryParams(page: $page)';
}


}

/// @nodoc
abstract mixin class $GetHistoryParamsCopyWith<$Res>  {
  factory $GetHistoryParamsCopyWith(GetHistoryParams value, $Res Function(GetHistoryParams) _then) = _$GetHistoryParamsCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class _$GetHistoryParamsCopyWithImpl<$Res>
    implements $GetHistoryParamsCopyWith<$Res> {
  _$GetHistoryParamsCopyWithImpl(this._self, this._then);

  final GetHistoryParams _self;
  final $Res Function(GetHistoryParams) _then;

/// Create a copy of GetHistoryParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHistoryParams].
extension GetHistoryParamsPatterns on GetHistoryParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGeneratedColorsHistoryParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGeneratedColorsHistoryParams value)  $default,){
final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGeneratedColorsHistoryParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams() when $default != null:
return $default(_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page)  $default,) {final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams():
return $default(_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page)?  $default,) {final _that = this;
switch (_that) {
case _GetGeneratedColorsHistoryParams() when $default != null:
return $default(_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _GetGeneratedColorsHistoryParams implements GetHistoryParams {
  const _GetGeneratedColorsHistoryParams({required this.page});
  

@override final  int page;

/// Create a copy of GetHistoryParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGeneratedColorsHistoryParamsCopyWith<_GetGeneratedColorsHistoryParams> get copyWith => __$GetGeneratedColorsHistoryParamsCopyWithImpl<_GetGeneratedColorsHistoryParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGeneratedColorsHistoryParams&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'GetHistoryParams(page: $page)';
}


}

/// @nodoc
abstract mixin class _$GetGeneratedColorsHistoryParamsCopyWith<$Res> implements $GetHistoryParamsCopyWith<$Res> {
  factory _$GetGeneratedColorsHistoryParamsCopyWith(_GetGeneratedColorsHistoryParams value, $Res Function(_GetGeneratedColorsHistoryParams) _then) = __$GetGeneratedColorsHistoryParamsCopyWithImpl;
@override @useResult
$Res call({
 int page
});




}
/// @nodoc
class __$GetGeneratedColorsHistoryParamsCopyWithImpl<$Res>
    implements _$GetGeneratedColorsHistoryParamsCopyWith<$Res> {
  __$GetGeneratedColorsHistoryParamsCopyWithImpl(this._self, this._then);

  final _GetGeneratedColorsHistoryParams _self;
  final $Res Function(_GetGeneratedColorsHistoryParams) _then;

/// Create a copy of GetHistoryParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_GetGeneratedColorsHistoryParams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
