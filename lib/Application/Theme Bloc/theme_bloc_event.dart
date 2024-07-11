part of 'theme_bloc_bloc.dart';

@freezed
class ThemeBlocEvent with _$ThemeBlocEvent {
  const factory ThemeBlocEvent.onTap({required int value}) = OnTap;
  const factory ThemeBlocEvent.onSelected({required int value}) = OnSelected;
}
