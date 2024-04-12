import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../functions/get_theme_color.dart';
import '../color/general_color.dart';

class TTextFormFiledTheme {
  static Color iconColor = GeneralAppColor.primaryColor;
  static Color textColor = GeneralAppColor.textBodyColor;

  static InputDecorationTheme lightTextFormFiledTheme() => InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        labelStyle: TextStyle(fontSize: 13.sp, color: textColor),
        hintStyle: TextStyle(fontSize: 13.sp, color: textColor),
        errorStyle: TextStyle(fontSize: 13.sp, color: textColor),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40.r)),
        filled: true,
        fillColor: GeneralAppColor.backGroundWidget,
      );

  static InputDecorationTheme darkTextFormFiledTheme() => InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        labelStyle: TextStyle(fontSize: 13.sp, color: textColor),
        hintStyle: TextStyle(fontSize: 13.sp, color: textColor),
        errorStyle: TextStyle(fontSize: 13.sp, color: textColor),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40.r)),
        filled: true,
        fillColor: GeneralAppColor.backGroundWidget,
      );
}
