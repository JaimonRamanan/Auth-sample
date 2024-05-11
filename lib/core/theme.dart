import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class AppTheme {
  static const white = Colors.white;
  static const primaryColor = Color(0xFF00B140);
  static final ThemeData lightTheme = ThemeData(
    hintColor: white,
    focusColor: white,
    dividerColor: const Color(0xFFE2E8E6),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: white),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: white,
        fontSize: 15,
      ),
    ),
    scaffoldBackgroundColor: white,
    colorScheme: const ColorScheme.light(primary: primaryColor),
  );
}
