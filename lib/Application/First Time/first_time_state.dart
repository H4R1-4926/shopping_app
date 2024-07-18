part of 'first_time_bloc.dart';

@freezed
class FirstTimeState with _$FirstTimeState {
  const factory FirstTimeState({required bool isFirstTime}) = _FirstTimeState;
  factory FirstTimeState.initial() {
    return const FirstTimeState(isFirstTime: true);
  }
}
