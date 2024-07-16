import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/Application/Theme%20Bloc/theme_bloc_bloc.dart';
import 'package:shopping_app/Core/theme.dart';
import 'package:shopping_app/Presentation/Home/tab_bar.dart';
import 'package:shopping_app/Presentation/LoginOrSignin/log_or_sign.dart';
import 'Application/RadioButton/radio_button_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RadioButtonBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBlocBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
        builder: (context, state) {
          return MaterialApp(
              darkTheme: kdarkMode,
              theme: state.isTrue ? kdarkMode : klightMode,
              debugShowCheckedModeBanner: false,
              home: const LogOrSignIn());
        },
      ),
    );
  }
}
