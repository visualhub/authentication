import 'package:auth/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:auth/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:auth/src/utils/theme/widget_theme/text_form_field_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonThemeLight,
    outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonThemeLight,
    inputDecorationTheme: TTextFormFieldTheme.textFormFieldThemeLight,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonThemeDark,
    outlinedButtonTheme: TOutlinedButtonTheme.outlinedButtonThemeDark,
    inputDecorationTheme: TTextFormFieldTheme.textFormFieldThemeDark,
  );
}
