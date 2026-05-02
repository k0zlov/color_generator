// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsTheme {

 SettingsThemeMode get mode;
/// Create a copy of SettingsTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsThemeCopyWith<SettingsTheme> get copyWith => _$SettingsThemeCopyWithImpl<SettingsTheme>(this as SettingsTheme, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsTheme&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'SettingsTheme(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $SettingsThemeCopyWith<$Res>  {
  factory $SettingsThemeCopyWith(SettingsTheme value, $Res Function(SettingsTheme) _then) = _$SettingsThemeCopyWithImpl;
@useResult
$Res call({
 SettingsThemeMode mode
});




}
/// @nodoc
class _$SettingsThemeCopyWithImpl<$Res>
    implements $SettingsThemeCopyWith<$Res> {
  _$SettingsThemeCopyWithImpl(this._self, this._then);

  final SettingsTheme _self;
  final $Res Function(SettingsTheme) _then;

/// Create a copy of SettingsTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SettingsThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsTheme].
extension SettingsThemePatterns on SettingsTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsTheme value)  $default,){
final _that = this;
switch (_that) {
case _SettingsTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsTheme value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsThemeMode mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsTheme() when $default != null:
return $default(_that.mode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsThemeMode mode)  $default,) {final _that = this;
switch (_that) {
case _SettingsTheme():
return $default(_that.mode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsThemeMode mode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsTheme() when $default != null:
return $default(_that.mode);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsTheme implements SettingsTheme {
  const _SettingsTheme({this.mode = SettingsThemeMode.system});
  

@override@JsonKey() final  SettingsThemeMode mode;

/// Create a copy of SettingsTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsThemeCopyWith<_SettingsTheme> get copyWith => __$SettingsThemeCopyWithImpl<_SettingsTheme>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsTheme&&(identical(other.mode, mode) || other.mode == mode));
}


@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'SettingsTheme(mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$SettingsThemeCopyWith<$Res> implements $SettingsThemeCopyWith<$Res> {
  factory _$SettingsThemeCopyWith(_SettingsTheme value, $Res Function(_SettingsTheme) _then) = __$SettingsThemeCopyWithImpl;
@override @useResult
$Res call({
 SettingsThemeMode mode
});




}
/// @nodoc
class __$SettingsThemeCopyWithImpl<$Res>
    implements _$SettingsThemeCopyWith<$Res> {
  __$SettingsThemeCopyWithImpl(this._self, this._then);

  final _SettingsTheme _self;
  final $Res Function(_SettingsTheme) _then;

/// Create a copy of SettingsTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(_SettingsTheme(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SettingsThemeMode,
  ));
}


}

// dart format on
