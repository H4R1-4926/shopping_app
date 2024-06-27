import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_button_event.dart';
part 'radio_button_bloc.freezed.dart';
part 'radio_button_state.dart';

class RadioButtonBloc extends Bloc<RadioButtonEvent, RadioButtonState> {
  RadioButtonBloc() : super(RadioButtonState.initial()) {
    on<_OnClicked>((event, emit) {
      emit(RadioButtonState(value: event.value));
    });
  }
}
