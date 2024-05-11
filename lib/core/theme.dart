import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static const white = Colors.white;
  static const black = Colors.black;
  static const fillColor = Color(0xFFFAFAFA);
  static const primaryColor = Color.fromRGBO(0, 177, 64, 1);
  static final ThemeData lightTheme = ThemeData(
    hintColor: white,
    focusColor: white,
    dividerColor: const Color(0xFFE2E8E6),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: black),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: black,
        fontSize: 25.sp,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        color: black,
        fontSize: 15.sp,
      ),
      labelMedium: TextStyle(
        color: white,
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    scaffoldBackgroundColor: white,
    colorScheme: const ColorScheme.light(primary: primaryColor),
  );
}
