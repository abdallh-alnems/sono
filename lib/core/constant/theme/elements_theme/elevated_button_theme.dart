import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../responsive/responsive_text.dart';
import '../color/general_color.dart';

class EElevatedButtonTheme {

  static ElevatedButtonThemeData lightElevatedButtonTheme() =>
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: GeneralAppColor.buttonTextColor,
              backgroundColor: GeneralAppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              textStyle: TextStyle(fontSize: getSizeText(19.sp,9.sp  ,0))));

  static ElevatedButtonThemeData darkElevatedButtonTheme() =>
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: GeneralAppColor.buttonTextColor,
              backgroundColor: GeneralAppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              textStyle: TextStyle(fontSize: getSizeText(19.sp,9.sp  ,0))));
}
