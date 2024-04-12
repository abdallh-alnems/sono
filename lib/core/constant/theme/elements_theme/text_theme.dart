import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/theme/color/general_color.dart';

import '../../../responsive/base_widget.dart';
import '../../../responsive/screen_size.dart';
import '../color/dark_color.dart';
import '../color/light_color.dart';

class TTextTheme {
  static bool get size => BaseWidget.isTablet();
  static double height = ScreenSize.screenHeight;

  static TextTheme lightTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: size ? 15.sp : 25.sp,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: size ? 13.sp : 19.sp,
        ),
        bodyLarge: TextStyle(
          height: height * .0027,
          color: GeneralAppColor.textBodyColor,
          fontSize: size ? 7.sp : 11.sp,
        ),
      );

  static TextTheme darkTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: size ? 15.sp : 25.sp,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: size ? 13.sp : 19.sp,
        ),
        bodyLarge: TextStyle(
          height: height * .0027,
          color: GeneralAppColor.textBodyColor,
          fontSize: size ? 7.sp : 11.sp,
        ),
      );
}
