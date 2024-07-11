part of 'theme_bloc_bloc.dart';

@freezed
class ThemeBlocState with _$ThemeBlocState {
  const factory ThemeBlocState({required bool isTrue, required int value}) =
      _ThemeBlocState;
  factory ThemeBlocState.initial() {
    return const ThemeBlocState(isTrue: false, value: 1);
  }
}
