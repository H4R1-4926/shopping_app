// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_time_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirstTimeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCheck value) onCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCheck value)? onCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCheck value)? onCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstTimeEventCopyWith<$Res> {
  factory $FirstTimeEventCopyWith(
          FirstTimeEvent value, $Res Function(FirstTimeEvent) then) =
      _$FirstTimeEventCopyWithImpl<$Res, FirstTimeEvent>;
}

/// @nodoc
class _$FirstTimeEventCopyWithImpl<$Res, $Val extends FirstTimeEvent>
    implements $FirstTimeEventCopyWith<$Res> {
  _$FirstTimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnCheckImplCopyWith<$Res> {
  factory _$$OnCheckImplCopyWith(
          _$OnCheckImpl value, $Res Function(_$OnCheckImpl) then) =
      __$$OnCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCheckImplCopyWithImpl<$Res>
    extends _$FirstTimeEventCopyWithImpl<$Res, _$OnCheckImpl>
    implements _$$OnCheckImplCopyWith<$Res> {
  __$$OnCheckImplCopyWithImpl(
      _$OnCheckImpl _value, $Res Function(_$OnCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCheckImpl implements OnCheck {
  const _$OnCheckImpl();

  @override
  String toString() {
    return 'FirstTimeEvent.onCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCheck,
  }) {
    return onCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCheck,
  }) {
    return onCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCheck,
    required TResult orElse(),
  }) {
    if (onCheck != null) {
      return onCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCheck value) onCheck,
  }) {
    return onCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCheck value)? onCheck,
  }) {
    return onCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCheck value)? onCheck,
    required TResult orElse(),
  }) {
    if (onCheck != null) {
      return onCheck(this);
    }
    return orElse();
  }
}

abstract class OnCheck implements FirstTimeEvent {
  const factory OnCheck() = _$OnCheckImpl;
}

/// @nodoc
mixin _$FirstTimeState {
  bool get isFirstTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstTimeStateCopyWith<FirstTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstTimeStateCopyWith<$Res> {
  factory $FirstTimeStateCopyWith(
          FirstTimeState value, $Res Function(FirstTimeState) then) =
      _$FirstTimeStateCopyWithImpl<$Res, FirstTimeState>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class _$FirstTimeStateCopyWithImpl<$Res, $Val extends FirstTimeState>
    implements $FirstTimeStateCopyWith<$Res> {
  _$FirstTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_value.copyWith(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirstTimeStateImplCopyWith<$Res>
    implements $FirstTimeStateCopyWith<$Res> {
  factory _$$FirstTimeStateImplCopyWith(_$FirstTimeStateImpl value,
          $Res Function(_$FirstTimeStateImpl) then) =
      __$$FirstTimeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$FirstTimeStateImplCopyWithImpl<$Res>
    extends _$FirstTimeStateCopyWithImpl<$Res, _$FirstTimeStateImpl>
    implements _$$FirstTimeStateImplCopyWith<$Res> {
  __$$FirstTimeStateImplCopyWithImpl(
      _$FirstTimeStateImpl _value, $Res Function(_$FirstTimeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$FirstTimeStateImpl(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FirstTimeStateImpl implements _FirstTimeState {
  const _$FirstTimeStateImpl({required this.isFirstTime});

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'FirstTimeState(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstTimeStateImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstTimeStateImplCopyWith<_$FirstTimeStateImpl> get copyWith =>
      __$$FirstTimeStateImplCopyWithImpl<_$FirstTimeStateImpl>(
          this, _$identity);
}

abstract class _FirstTimeState implements FirstTimeState {
  const factory _FirstTimeState({required final bool isFirstTime}) =
      _$FirstTimeStateImpl;

  @override
  bool get isFirstTime;
  @override
  @JsonKey(ignore: true)
  _$$FirstTimeStateImplCopyWith<_$FirstTimeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
