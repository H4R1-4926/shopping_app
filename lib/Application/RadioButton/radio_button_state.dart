part of 'radio_button_bloc.dart';

@freezed
class RadioButtonState with _$RadioButtonState {
  const factory RadioButtonState({required int value}) = _RadioButtonState;
  factory RadioButtonState.initial() {
    return const RadioButtonState(value: 1);
  }
}
