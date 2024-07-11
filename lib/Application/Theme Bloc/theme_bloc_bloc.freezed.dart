// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeBlocEvent {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) onTap,
    required TResult Function(int value) onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? onTap,
    TResult? Function(int value)? onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? onTap,
    TResult Function(int value)? onSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnSelected value) onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnSelected value)? onSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnSelected value)? onSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeBlocEventCopyWith<ThemeBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocEventCopyWith<$Res> {
  factory $ThemeBlocEventCopyWith(
          ThemeBlocEvent value, $Res Function(ThemeBlocEvent) then) =
      _$ThemeBlocEventCopyWithImpl<$Res, ThemeBlocEvent>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$ThemeBlocEventCopyWithImpl<$Res, $Val extends ThemeBlocEvent>
    implements $ThemeBlocEventCopyWith<$Res> {
  _$ThemeBlocEventCopyWithImpl(this._value, this._then);

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
abstract class _$$OnTapImplCopyWith<$Res>
    implements $ThemeBlocEventCopyWith<$Res> {
  factory _$$OnTapImplCopyWith(
          _$OnTapImpl value, $Res Function(_$OnTapImpl) then) =
      __$$OnTapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$OnTapImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$OnTapImpl>
    implements _$$OnTapImplCopyWith<$Res> {
  __$$OnTapImplCopyWithImpl(
      _$OnTapImpl _value, $Res Function(_$OnTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnTapImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnTapImpl implements OnTap {
  const _$OnTapImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'ThemeBlocEvent.onTap(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTapImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTapImplCopyWith<_$OnTapImpl> get copyWith =>
      __$$OnTapImplCopyWithImpl<_$OnTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) onTap,
    required TResult Function(int value) onSelected,
  }) {
    return onTap(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? onTap,
    TResult? Function(int value)? onSelected,
  }) {
    return onTap?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? onTap,
    TResult Function(int value)? onSelected,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnSelected value) onSelected,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnSelected value)? onSelected,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnSelected value)? onSelected,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class OnTap implements ThemeBlocEvent {
  const factory OnTap({required final int value}) = _$OnTapImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$OnTapImplCopyWith<_$OnTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSelectedImplCopyWith<$Res>
    implements $ThemeBlocEventCopyWith<$Res> {
  factory _$$OnSelectedImplCopyWith(
          _$OnSelectedImpl value, $Res Function(_$OnSelectedImpl) then) =
      __$$OnSelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$OnSelectedImplCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res, _$OnSelectedImpl>
    implements _$$OnSelectedImplCopyWith<$Res> {
  __$$OnSelectedImplCopyWithImpl(
      _$OnSelectedImpl _value, $Res Function(_$OnSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnSelectedImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSelectedImpl implements OnSelected {
  const _$OnSelectedImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'ThemeBlocEvent.onSelected(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSelectedImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSelectedImplCopyWith<_$OnSelectedImpl> get copyWith =>
      __$$OnSelectedImplCopyWithImpl<_$OnSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) onTap,
    required TResult Function(int value) onSelected,
  }) {
    return onSelected(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? onTap,
    TResult? Function(int value)? onSelected,
  }) {
    return onSelected?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? onTap,
    TResult Function(int value)? onSelected,
    required TResult orElse(),
  }) {
    if (onSelected != null) {
      return onSelected(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTap value) onTap,
    required TResult Function(OnSelected value) onSelected,
  }) {
    return onSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnTap value)? onTap,
    TResult? Function(OnSelected value)? onSelected,
  }) {
    return onSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTap value)? onTap,
    TResult Function(OnSelected value)? onSelected,
    required TResult orElse(),
  }) {
    if (onSelected != null) {
      return onSelected(this);
    }
    return orElse();
  }
}

abstract class OnSelected implements ThemeBlocEvent {
  const factory OnSelected({required final int value}) = _$OnSelectedImpl;

  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$OnSelectedImplCopyWith<_$OnSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeBlocState {
  bool get isTrue => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeBlocStateCopyWith<ThemeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocStateCopyWith<$Res> {
  factory $ThemeBlocStateCopyWith(
          ThemeBlocState value, $Res Function(ThemeBlocState) then) =
      _$ThemeBlocStateCopyWithImpl<$Res, ThemeBlocState>;
  @useResult
  $Res call({bool isTrue, int value});
}

/// @nodoc
class _$ThemeBlocStateCopyWithImpl<$Res, $Val extends ThemeBlocState>
    implements $ThemeBlocStateCopyWith<$Res> {
  _$ThemeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeBlocStateImplCopyWith<$Res>
    implements $ThemeBlocStateCopyWith<$Res> {
  factory _$$ThemeBlocStateImplCopyWith(_$ThemeBlocStateImpl value,
          $Res Function(_$ThemeBlocStateImpl) then) =
      __$$ThemeBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTrue, int value});
}

/// @nodoc
class __$$ThemeBlocStateImplCopyWithImpl<$Res>
    extends _$ThemeBlocStateCopyWithImpl<$Res, _$ThemeBlocStateImpl>
    implements _$$ThemeBlocStateImplCopyWith<$Res> {
  __$$ThemeBlocStateImplCopyWithImpl(
      _$ThemeBlocStateImpl _value, $Res Function(_$ThemeBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
    Object? value = null,
  }) {
    return _then(_$ThemeBlocStateImpl(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ThemeBlocStateImpl implements _ThemeBlocState {
  const _$ThemeBlocStateImpl({required this.isTrue, required this.value});

  @override
  final bool isTrue;
  @override
  final int value;

  @override
  String toString() {
    return 'ThemeBlocState(isTrue: $isTrue, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeBlocStateImpl &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTrue, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeBlocStateImplCopyWith<_$ThemeBlocStateImpl> get copyWith =>
      __$$ThemeBlocStateImplCopyWithImpl<_$ThemeBlocStateImpl>(
          this, _$identity);
}

abstract class _ThemeBlocState implements ThemeBlocState {
  const factory _ThemeBlocState(
      {required final bool isTrue,
      required final int value}) = _$ThemeBlocStateImpl;

  @override
  bool get isTrue;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$ThemeBlocStateImplCopyWith<_$ThemeBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
