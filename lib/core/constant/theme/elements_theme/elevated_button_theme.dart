import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../responsive/base_widget.dart';
import '../color/general_color.dart';

class EElevatedButtonTheme {
  static bool get size => BaseWidget.isTablet();

  static ElevatedButtonThemeData lightElevatedButtonTheme() =>
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: GeneralAppColor.buttonTextColor,
              backgroundColor: GeneralAppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              textStyle: TextStyle(fontSize: size ? 19.sp : 9.sp)));

  static ElevatedButtonThemeData darkElevatedButtonTheme() =>
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: GeneralAppColor.buttonTextColor,
              backgroundColor: GeneralAppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              textStyle: TextStyle(fontSize: size ? 19.sp : 9.sp)));
}
