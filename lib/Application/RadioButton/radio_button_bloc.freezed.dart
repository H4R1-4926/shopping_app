// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RadioButtonEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) onClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? onClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? onClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnClicked value) onClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnClicked value)? onClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnClicked value)? onClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioButtonEventCopyWith<RadioButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioButtonEventCopyWith<$Res> {
  factory $RadioButtonEventCopyWith(
          RadioButtonEvent value, $Res Function(RadioButtonEvent) then) =
      _$RadioButtonEventCopyWithImpl<$Res, RadioButtonEvent>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$RadioButtonEventCopyWithImpl<$Res, $Val extends RadioButtonEvent>
    implements $RadioButtonEventCopyWith<$Res> {
  _$RadioButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnClickedImplCopyWith<$Res>
    implements $RadioButtonEventCopyWith<$Res> {
  factory _$$OnClickedImplCopyWith(
          _$OnClickedImpl value, $Res Function(_$OnClickedImpl) then) =
      __$$OnClickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$OnClickedImplCopyWithImpl<$Res>
    extends _$RadioButtonEventCopyWithImpl<$Res, _$OnClickedImpl>
    implements _$$OnClickedImplCopyWith<$Res> {
  __$$OnClickedImplCopyWithImpl(
      _$OnClickedImpl _value, $Res Function(_$OnClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnClickedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnClickedImpl implements _OnClicked {
  const _$OnClickedImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'RadioButtonEvent.onClicked(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnClickedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnClickedImplCopyWith<_$OnClickedImpl> get copyWith =>
      __$$OnClickedImplCopyWithImpl<_$OnClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) onClicked,
  }) {
    return onClicked(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? onClicked,
  }) {
    return onClicked?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? onClicked,
    required TResult orElse(),
  }) {
    if (onClicked != null) {
      return onClicked(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnClicked value) onClicked,
  }) {
    return onClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnClicked value)? onClicked,
  }) {
    return onClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnClicked value)? onClicked,
    required TResult orElse(),
  }) {
    if (onClicked != null) {
      return onClicked(this);
    }
    return orElse();
  }
}

abstract class _OnClicked implements RadioButtonEvent {
  const factory _OnClicked({required final int value}) = _$OnClickedImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$OnClickedImplCopyWith<_$OnClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RadioButtonState {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioButtonStateCopyWith<RadioButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioButtonStateCopyWith<$Res> {
  factory $RadioButtonStateCopyWith(
          RadioButtonState value, $Res Function(RadioButtonState) then) =
      _$RadioButtonStateCopyWithImpl<$Res, RadioButtonState>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$RadioButtonStateCopyWithImpl<$Res, $Val extends RadioButtonState>
    implements $RadioButtonStateCopyWith<$Res> {
  _$RadioButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioButtonStateImplCopyWith<$Res>
    implements $RadioButtonStateCopyWith<$Res> {
  factory _$$RadioButtonStateImplCopyWith(_$RadioButtonStateImpl value,
          $Res Function(_$RadioButtonStateImpl) then) =
      __$$RadioButtonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$RadioButtonStateImplCopyWithImpl<$Res>
    extends _$RadioButtonStateCopyWithImpl<$Res, _$RadioButtonStateImpl>
    implements _$$RadioButtonStateImplCopyWith<$Res> {
  __$$RadioButtonStateImplCopyWithImpl(_$RadioButtonStateImpl _value,
      $Res Function(_$RadioButtonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RadioButtonStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RadioButtonStateImpl implements _RadioButtonState {
  const _$RadioButtonStateImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'RadioButtonState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioButtonStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioButtonStateImplCopyWith<_$RadioButtonStateImpl> get copyWith =>
      __$$RadioButtonStateImplCopyWithImpl<_$RadioButtonStateImpl>(
          this, _$identity);
}

abstract class _RadioButtonState implements RadioButtonState {
  const factory _RadioButtonState({required final int value}) =
      _$RadioButtonStateImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$RadioButtonStateImplCopyWith<_$RadioButtonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
