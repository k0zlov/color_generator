// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_generator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ColorGeneratorState {

 int get currentHistoryPage; GeneratedColor? get currentColor; bool get isHistoryLoading; bool get historyReachedMax; Set<GeneratedColor> get history;
/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColorGeneratorStateCopyWith<ColorGeneratorState> get copyWith => _$ColorGeneratorStateCopyWithImpl<ColorGeneratorState>(this as ColorGeneratorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColorGeneratorState&&(identical(other.currentHistoryPage, currentHistoryPage) || other.currentHistoryPage == currentHistoryPage)&&(identical(other.currentColor, currentColor) || other.currentColor == currentColor)&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.historyReachedMax, historyReachedMax) || other.historyReachedMax == historyReachedMax)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,currentHistoryPage,currentColor,isHistoryLoading,historyReachedMax,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'ColorGeneratorState(currentHistoryPage: $currentHistoryPage, currentColor: $currentColor, isHistoryLoading: $isHistoryLoading, historyReachedMax: $historyReachedMax, history: $history)';
}


}

/// @nodoc
abstract mixin class $ColorGeneratorStateCopyWith<$Res>  {
  factory $ColorGeneratorStateCopyWith(ColorGeneratorState value, $Res Function(ColorGeneratorState) _then) = _$ColorGeneratorStateCopyWithImpl;
@useResult
$Res call({
 int currentHistoryPage, GeneratedColor? currentColor, bool isHistoryLoading, bool historyReachedMax, Set<GeneratedColor> history
});


$GeneratedColorCopyWith<$Res>? get currentColor;

}
/// @nodoc
class _$ColorGeneratorStateCopyWithImpl<$Res>
    implements $ColorGeneratorStateCopyWith<$Res> {
  _$ColorGeneratorStateCopyWithImpl(this._self, this._then);

  final ColorGeneratorState _self;
  final $Res Function(ColorGeneratorState) _then;

/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentHistoryPage = null,Object? currentColor = freezed,Object? isHistoryLoading = null,Object? historyReachedMax = null,Object? history = null,}) {
  return _then(_self.copyWith(
currentHistoryPage: null == currentHistoryPage ? _self.currentHistoryPage : currentHistoryPage // ignore: cast_nullable_to_non_nullable
as int,currentColor: freezed == currentColor ? _self.currentColor : currentColor // ignore: cast_nullable_to_non_nullable
as GeneratedColor?,isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,historyReachedMax: null == historyReachedMax ? _self.historyReachedMax : historyReachedMax // ignore: cast_nullable_to_non_nullable
as bool,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as Set<GeneratedColor>,
  ));
}
/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratedColorCopyWith<$Res>? get currentColor {
    if (_self.currentColor == null) {
    return null;
  }

  return $GeneratedColorCopyWith<$Res>(_self.currentColor!, (value) {
    return _then(_self.copyWith(currentColor: value));
  });
}
}


/// Adds pattern-matching-related methods to [ColorGeneratorState].
extension ColorGeneratorStatePatterns on ColorGeneratorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColorGeneratorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColorGeneratorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColorGeneratorState value)  $default,){
final _that = this;
switch (_that) {
case _ColorGeneratorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColorGeneratorState value)?  $default,){
final _that = this;
switch (_that) {
case _ColorGeneratorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentHistoryPage,  GeneratedColor? currentColor,  bool isHistoryLoading,  bool historyReachedMax,  Set<GeneratedColor> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColorGeneratorState() when $default != null:
return $default(_that.currentHistoryPage,_that.currentColor,_that.isHistoryLoading,_that.historyReachedMax,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentHistoryPage,  GeneratedColor? currentColor,  bool isHistoryLoading,  bool historyReachedMax,  Set<GeneratedColor> history)  $default,) {final _that = this;
switch (_that) {
case _ColorGeneratorState():
return $default(_that.currentHistoryPage,_that.currentColor,_that.isHistoryLoading,_that.historyReachedMax,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentHistoryPage,  GeneratedColor? currentColor,  bool isHistoryLoading,  bool historyReachedMax,  Set<GeneratedColor> history)?  $default,) {final _that = this;
switch (_that) {
case _ColorGeneratorState() when $default != null:
return $default(_that.currentHistoryPage,_that.currentColor,_that.isHistoryLoading,_that.historyReachedMax,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _ColorGeneratorState implements ColorGeneratorState {
  const _ColorGeneratorState({this.currentHistoryPage = 0, this.currentColor, this.isHistoryLoading = false, this.historyReachedMax = false, final  Set<GeneratedColor> history = const {}}): _history = history;
  

@override@JsonKey() final  int currentHistoryPage;
@override final  GeneratedColor? currentColor;
@override@JsonKey() final  bool isHistoryLoading;
@override@JsonKey() final  bool historyReachedMax;
 final  Set<GeneratedColor> _history;
@override@JsonKey() Set<GeneratedColor> get history {
  if (_history is EqualUnmodifiableSetView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_history);
}


/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorGeneratorStateCopyWith<_ColorGeneratorState> get copyWith => __$ColorGeneratorStateCopyWithImpl<_ColorGeneratorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorGeneratorState&&(identical(other.currentHistoryPage, currentHistoryPage) || other.currentHistoryPage == currentHistoryPage)&&(identical(other.currentColor, currentColor) || other.currentColor == currentColor)&&(identical(other.isHistoryLoading, isHistoryLoading) || other.isHistoryLoading == isHistoryLoading)&&(identical(other.historyReachedMax, historyReachedMax) || other.historyReachedMax == historyReachedMax)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,currentHistoryPage,currentColor,isHistoryLoading,historyReachedMax,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'ColorGeneratorState(currentHistoryPage: $currentHistoryPage, currentColor: $currentColor, isHistoryLoading: $isHistoryLoading, historyReachedMax: $historyReachedMax, history: $history)';
}


}

/// @nodoc
abstract mixin class _$ColorGeneratorStateCopyWith<$Res> implements $ColorGeneratorStateCopyWith<$Res> {
  factory _$ColorGeneratorStateCopyWith(_ColorGeneratorState value, $Res Function(_ColorGeneratorState) _then) = __$ColorGeneratorStateCopyWithImpl;
@override @useResult
$Res call({
 int currentHistoryPage, GeneratedColor? currentColor, bool isHistoryLoading, bool historyReachedMax, Set<GeneratedColor> history
});


@override $GeneratedColorCopyWith<$Res>? get currentColor;

}
/// @nodoc
class __$ColorGeneratorStateCopyWithImpl<$Res>
    implements _$ColorGeneratorStateCopyWith<$Res> {
  __$ColorGeneratorStateCopyWithImpl(this._self, this._then);

  final _ColorGeneratorState _self;
  final $Res Function(_ColorGeneratorState) _then;

/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentHistoryPage = null,Object? currentColor = freezed,Object? isHistoryLoading = null,Object? historyReachedMax = null,Object? history = null,}) {
  return _then(_ColorGeneratorState(
currentHistoryPage: null == currentHistoryPage ? _self.currentHistoryPage : currentHistoryPage // ignore: cast_nullable_to_non_nullable
as int,currentColor: freezed == currentColor ? _self.currentColor : currentColor // ignore: cast_nullable_to_non_nullable
as GeneratedColor?,isHistoryLoading: null == isHistoryLoading ? _self.isHistoryLoading : isHistoryLoading // ignore: cast_nullable_to_non_nullable
as bool,historyReachedMax: null == historyReachedMax ? _self.historyReachedMax : historyReachedMax // ignore: cast_nullable_to_non_nullable
as bool,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as Set<GeneratedColor>,
  ));
}

/// Create a copy of ColorGeneratorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratedColorCopyWith<$Res>? get currentColor {
    if (_self.currentColor == null) {
    return null;
  }

  return $GeneratedColorCopyWith<$Res>(_self.currentColor!, (value) {
    return _then(_self.copyWith(currentColor: value));
  });
}
}

// dart format on
