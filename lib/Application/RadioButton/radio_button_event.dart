part of 'radio_button_bloc.dart';

@freezed
class RadioButtonEvent with _$RadioButtonEvent {
  const factory RadioButtonEvent.onClicked({required int value}) = _OnClicked;
}
