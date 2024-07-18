import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'first_time_event.dart';
part 'first_time_state.dart';
part 'first_time_bloc.freezed.dart';

class FirstTimeBloc extends Bloc<FirstTimeEvent, FirstTimeState> {
  FirstTimeBloc() : super(FirstTimeState.initial()) {
    on<OnCheck>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final isFirstTime = prefs.getBool('isFirstTime') ?? true;
      if (isFirstTime) {
        emit(FirstTimeState(isFirstTime: isFirstTime));
        prefs.setBool('isFirstTime', false);
      }
    });
  }
}
