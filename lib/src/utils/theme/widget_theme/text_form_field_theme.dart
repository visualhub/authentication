import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static const textFormFieldThemeLight = InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.black),
    suffixIconColor: Colors.black,
    prefixIconColor: Colors.black,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.black),
    ),
  );

  static const textFormFieldThemeDark = InputDecorationTheme(
    labelStyle: TextStyle(color: Colors.white),
    suffixIconColor: Colors.white,
    prefixIconColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Colors.white),
    ),
  );
}
