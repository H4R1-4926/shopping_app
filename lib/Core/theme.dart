import 'package:flutter/material.dart';
import 'package:shopping_app/Core/colors.dart';

ThemeData kdarkMode = ThemeData(
    searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(Color.fromARGB(95, 69, 69, 69)),
        surfaceTintColor:
            WidgetStatePropertyAll(Color.fromARGB(95, 69, 69, 69))),
    appBarTheme:
        const AppBarTheme(backgroundColor: kblack, surfaceTintColor: kblack),
    colorScheme: const ColorScheme.dark(
      surface: kblack,
      primary: klightGrey,
      secondary: klightGrey,
      tertiary: kblack,
      inversePrimary: kGrey,
    ));
ThemeData klightMode = ThemeData(
    searchBarTheme: const SearchBarThemeData(
        backgroundColor: WidgetStatePropertyAll(
          klightGrey,
        ),
        surfaceTintColor: WidgetStatePropertyAll(klightGrey)),
    appBarTheme:
        const AppBarTheme(backgroundColor: kwhite, surfaceTintColor: kwhite),
    scaffoldBackgroundColor: kwhite);
