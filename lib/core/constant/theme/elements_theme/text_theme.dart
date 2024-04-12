import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/theme/color/general_color.dart';

import '../../../responsive/base_widget.dart';
import '../../../responsive/responsive_text.dart';
import '../../../responsive/screen_size.dart';
import '../color/dark_color.dart';
import '../color/light_color.dart';

class TTextTheme {
  static double height = ScreenSize.screenHeight;

  static TextTheme lightTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: getSizeText(25.sp,15.sp  ,0),
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: getSizeText(19.sp,13.sp  ,0),
        ),
        bodyLarge: TextStyle(
          height: height * .0027,
          color: GeneralAppColor.textBodyColor,
          fontSize: getSizeText(11.sp,7.sp  ,0),
        ),
      );

  static TextTheme darkTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: getSizeText(25.sp,15.sp  ,0),
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontSize: getSizeText(19.sp,13.sp  ,0),
        ),
        bodyLarge: TextStyle(
          height: height * .0027,
          color: GeneralAppColor.textBodyColor,
          fontSize: getSizeText(11.sp,7.sp  ,0),
        ),
      );
}
