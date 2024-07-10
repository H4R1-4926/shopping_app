import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app/Core/colors.dart';
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
    return BlocProvider(
      create: (context) => RadioButtonBloc(),
      child: MaterialApp(
          // darkTheme: kdarkMode,
          theme: ThemeData(scaffoldBackgroundColor: kwhite),
          debugShowCheckedModeBanner: false,
          home: const TabBarPage()),
    );
  }
}
