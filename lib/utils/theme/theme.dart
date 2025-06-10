import 'package:flutter/material.dart';
import 'package:pawly/utils/theme/custom_themes/appbar_theme.dart';
import 'package:pawly/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:pawly/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:pawly/utils/theme/custom_themes/chip_theme.dart';
import 'package:pawly/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:pawly/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:pawly/utils/theme/custom_themes/text_field_theme.dart';
import 'package:pawly/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'OpenSans',
    // textTheme: GoogleFonts.openSansTextTheme(AppTextTheme.lightTextTheme),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeData,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: BarTheme.lightAppBarTheme,
    checkboxTheme: CheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'OpenSans',
    // textTheme: GoogleFonts.openSansTextTheme(AppTextTheme.darkTextTheme),
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonThemeData,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: BarTheme.darkAppBarTheme,
    checkboxTheme: CheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}
