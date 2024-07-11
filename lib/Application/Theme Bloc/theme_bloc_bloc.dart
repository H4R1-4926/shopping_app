import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';
part 'theme_bloc_bloc.freezed.dart';

class ThemeBlocBloc extends Bloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBlocBloc() : super(ThemeBlocState.initial()) {
    on<OnTap>((event, emit) {
      if (event.value == 3) {
        emit(ThemeBlocState(isTrue: true, value: state.value));
      } else {
        emit(ThemeBlocState(isTrue: false, value: state.value));
      }
    });
    on<OnSelected>((event, emit) {
      emit(ThemeBlocState(isTrue: state.isTrue, value: event.value));
    });
  }
}
