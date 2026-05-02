// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsThemeModel {

 String get mode;
/// Create a copy of SettingsThemeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsThemeModelCopyWith<SettingsThemeModel> get copyWith => _$SettingsThemeModelCopyWithImpl<SettingsThemeModel>(this as SettingsThemeModel, _$identity);

  /// Serializes this SettingsThemeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsThemeModel&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'SettingsThemeModel(mode: $mode)';
}


}

/// @nodoc
abstract mixin class $SettingsThemeModelCopyWith<$Res>  {
  factory $SettingsThemeModelCopyWith(SettingsThemeModel value, $Res Function(SettingsThemeModel) _then) = _$SettingsThemeModelCopyWithImpl;
@useResult
$Res call({
 String mode
});




}
/// @nodoc
class _$SettingsThemeModelCopyWithImpl<$Res>
    implements $SettingsThemeModelCopyWith<$Res> {
  _$SettingsThemeModelCopyWithImpl(this._self, this._then);

  final SettingsThemeModel _self;
  final $Res Function(SettingsThemeModel) _then;

/// Create a copy of SettingsThemeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsThemeModel].
extension SettingsThemeModelPatterns on SettingsThemeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsThemeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsThemeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsThemeModel value)  $default,){
final _that = this;
switch (_that) {
case _SettingsThemeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsThemeModel value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsThemeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsThemeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String mode)  $default,) {final _that = this;
switch (_that) {
case _SettingsThemeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String mode)?  $default,) {final _that = this;
switch (_that) {
case _SettingsThemeModel() when $default != null:
return $default(_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsThemeModel extends SettingsThemeModel {
  const _SettingsThemeModel({required this.mode}): super._();
  factory _SettingsThemeModel.fromJson(Map<String, dynamic> json) => _$SettingsThemeModelFromJson(json);

@override final  String mode;

/// Create a copy of SettingsThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsThemeModelCopyWith<_SettingsThemeModel> get copyWith => __$SettingsThemeModelCopyWithImpl<_SettingsThemeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsThemeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsThemeModel&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mode);

@override
String toString() {
  return 'SettingsThemeModel(mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$SettingsThemeModelCopyWith<$Res> implements $SettingsThemeModelCopyWith<$Res> {
  factory _$SettingsThemeModelCopyWith(_SettingsThemeModel value, $Res Function(_SettingsThemeModel) _then) = __$SettingsThemeModelCopyWithImpl;
@override @useResult
$Res call({
 String mode
});




}
/// @nodoc
class __$SettingsThemeModelCopyWithImpl<$Res>
    implements _$SettingsThemeModelCopyWith<$Res> {
  __$SettingsThemeModelCopyWithImpl(this._self, this._then);

  final _SettingsThemeModel _self;
  final $Res Function(_SettingsThemeModel) _then;

/// Create a copy of SettingsThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,}) {
  return _then(_SettingsThemeModel(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
