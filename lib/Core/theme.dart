import 'package:flutter/material.dart';
import 'package:shopping_app/Core/colors.dart';

ThemeData kdarkMode = ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      modalBackgroundColor: kdarkbackground,
    ),
    searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(kdarkcolor3),
        surfaceTintColor: WidgetStatePropertyAll(kdarkcolor3)),
    appBarTheme: const AppBarTheme(
        backgroundColor: kdarkbackground, surfaceTintColor: kdarkbackground),
    colorScheme: const ColorScheme.dark(
      surface: kblack,
      primary: klightGrey,
      secondary: klightGrey,
      tertiary: kblack,
      inversePrimary: kGrey,
    ));

ThemeData klightMode = ThemeData(
    bottomSheetTheme: const BottomSheetThemeData(
      modalBackgroundColor: klightGrey,
    ),
    searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(
          klightGrey,
        ),
        surfaceTintColor: WidgetStatePropertyAll(klightGrey)),
    appBarTheme:
        const AppBarTheme(backgroundColor: kwhite, surfaceTintColor: kwhite),
    scaffoldBackgroundColor: kwhite);
