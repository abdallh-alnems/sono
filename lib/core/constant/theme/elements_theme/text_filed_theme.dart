import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../responsive/responsive_text.dart';
import '../color/general_color.dart';

class TTextFormFiledTheme {
  static Color iconColor = GeneralAppColor.primaryColor;
  static Color textColor = GeneralAppColor.textBodyColor;
  // static double get fontSize => getSizeText(13.sp, 7.sp, 0);

  static InputDecorationTheme lightTextFormFiledTheme() => InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        // labelStyle: TextStyle(fontSize: fontSize, color: textColor),
        hintStyle: TextStyle(
          // fontSize: fontSize,
          color: textColor,
        ),
        // errorStyle: TextStyle(fontSize: fontSize, color: textColor),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40.r)),
        filled: true,
        fillColor: GeneralAppColor.backGroundWidget,
        constraints: BoxConstraints(maxHeight: 40, minHeight: 40),
        
      );

  static InputDecorationTheme darkTextFormFiledTheme() => InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: iconColor,
        suffixIconColor: iconColor,
        // labelStyle: TextStyle(fontSize: fontSize, color: textColor),
        hintStyle: TextStyle(
          // fontSize: fontSize,
          color: textColor,
        ),
   

        // errorStyle: TextStyle(fontSize: fontSize, color: textColor),
        border: OutlineInputBorder(
          
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40.r)),
        filled: true,
        fillColor: GeneralAppColor.backGroundWidget,
        contentPadding: EdgeInsets.symmetric(vertical: 1),
        constraints: BoxConstraints(maxHeight: 40, minHeight: 40),
        
      );
}
