import 'package:flutter/material.dart';

import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Home/tab_bar.dart';
import 'package:shopping_app/Presentation/LoginOrSignin/log_or_sign.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: kwhite),
        debugShowCheckedModeBanner: false,
        home: const LogOrSignIn());
  }
}
