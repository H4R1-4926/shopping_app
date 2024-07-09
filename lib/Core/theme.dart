import 'package:flutter/material.dart';
import 'package:shopping_app/Core/colors.dart';

ThemeData kdarkMode = ThemeData(
    colorScheme: const ColorScheme.dark(
  surface: kblack,
  primary: klightGrey,
  secondary: klightGrey,
  tertiary: kblack,
  inversePrimary: kGrey,
));
ThemeData? klightMode = ThemeData(scaffoldBackgroundColor: kwhite);
