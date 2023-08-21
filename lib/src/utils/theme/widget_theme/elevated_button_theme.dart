import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static const elevatedButtonThemeLight = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(Colors.black),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          vertical: 20,
        ),
      ),
    ),
  );

  static const elevatedButtonThemeDark = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(Colors.white),
      foregroundColor: MaterialStatePropertyAll(Colors.black),
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          vertical: 20,
        ),
      ),
    ),
  );
}
