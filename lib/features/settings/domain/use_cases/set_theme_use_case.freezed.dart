// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_theme_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetThemeParams {

 SettingsTheme get theme;
/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetThemeParamsCopyWith<SetThemeParams> get copyWith => _$SetThemeParamsCopyWithImpl<SetThemeParams>(this as SetThemeParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetThemeParams&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

@override
String toString() {
  return 'SetThemeParams(theme: $theme)';
}


}

/// @nodoc
abstract mixin class $SetThemeParamsCopyWith<$Res>  {
  factory $SetThemeParamsCopyWith(SetThemeParams value, $Res Function(SetThemeParams) _then) = _$SetThemeParamsCopyWithImpl;
@useResult
$Res call({
 SettingsTheme theme
});


$SettingsThemeCopyWith<$Res> get theme;

}
/// @nodoc
class _$SetThemeParamsCopyWithImpl<$Res>
    implements $SetThemeParamsCopyWith<$Res> {
  _$SetThemeParamsCopyWithImpl(this._self, this._then);

  final SetThemeParams _self;
  final $Res Function(SetThemeParams) _then;

/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as SettingsTheme,
  ));
}
/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsThemeCopyWith<$Res> get theme {
  
  return $SettingsThemeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// Adds pattern-matching-related methods to [SetThemeParams].
extension SetThemeParamsPatterns on SetThemeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetThemeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetThemeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetThemeParams value)  $default,){
final _that = this;
switch (_that) {
case _SetThemeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetThemeParams value)?  $default,){
final _that = this;
switch (_that) {
case _SetThemeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsTheme theme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetThemeParams() when $default != null:
return $default(_that.theme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsTheme theme)  $default,) {final _that = this;
switch (_that) {
case _SetThemeParams():
return $default(_that.theme);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsTheme theme)?  $default,) {final _that = this;
switch (_that) {
case _SetThemeParams() when $default != null:
return $default(_that.theme);case _:
  return null;

}
}

}

/// @nodoc


class _SetThemeParams implements SetThemeParams {
  const _SetThemeParams({required this.theme});
  

@override final  SettingsTheme theme;

/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetThemeParamsCopyWith<_SetThemeParams> get copyWith => __$SetThemeParamsCopyWithImpl<_SetThemeParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetThemeParams&&(identical(other.theme, theme) || other.theme == theme));
}


@override
int get hashCode => Object.hash(runtimeType,theme);

@override
String toString() {
  return 'SetThemeParams(theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$SetThemeParamsCopyWith<$Res> implements $SetThemeParamsCopyWith<$Res> {
  factory _$SetThemeParamsCopyWith(_SetThemeParams value, $Res Function(_SetThemeParams) _then) = __$SetThemeParamsCopyWithImpl;
@override @useResult
$Res call({
 SettingsTheme theme
});


@override $SettingsThemeCopyWith<$Res> get theme;

}
/// @nodoc
class __$SetThemeParamsCopyWithImpl<$Res>
    implements _$SetThemeParamsCopyWith<$Res> {
  __$SetThemeParamsCopyWithImpl(this._self, this._then);

  final _SetThemeParams _self;
  final $Res Function(_SetThemeParams) _then;

/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,}) {
  return _then(_SetThemeParams(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as SettingsTheme,
  ));
}

/// Create a copy of SetThemeParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsThemeCopyWith<$Res> get theme {
  
  return $SettingsThemeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}

// dart format on
