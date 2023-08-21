import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static const outlinedButtonThemeLight = OutlinedButtonThemeData(
    style: ButtonStyle(
      side:
          MaterialStatePropertyAll(BorderSide(width: 1.0, color: Colors.black)),
      backgroundColor: MaterialStatePropertyAll(Colors.white),
      foregroundColor: MaterialStatePropertyAll(Colors.black),
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 20),
      ),
    ),
  );

  static const outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: ButtonStyle(
      side:
          MaterialStatePropertyAll(BorderSide(width: 1.0, color: Colors.white)),
      backgroundColor: MaterialStatePropertyAll(Colors.black),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
      padding: MaterialStatePropertyAll(
        EdgeInsets.symmetric(vertical: 20),
      ),
    ),
  );
}
