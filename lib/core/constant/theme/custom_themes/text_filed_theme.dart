import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TTextFormFiledTheme {
  static InputDecorationTheme lightTextFormFiledTheme() =>
      InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 16.sp, color: Colors.black),
        hintStyle: TextStyle(fontSize: 16.sp, color: Colors.black),

        errorStyle: TextStyle(fontSize: 16.sp, color: Colors.black),
        floatingLabelStyle: TextStyle(color: Colors.red),

        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40)),
        filled: true,
        // fillColor: AppColor.backGroundIcon,
      );

  static InputDecorationTheme darkTextFormFiledTheme() => InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 16.sp, color: Colors.black),
        hintStyle: TextStyle(fontSize: 16.sp, color: Colors.black),

        errorStyle: TextStyle(fontSize: 16.sp, color: Colors.black),
        floatingLabelStyle: TextStyle(color: Colors.red),

        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(40)),
        filled: true,
        // fillColor: AppColor.backGroundIcon,
      );
}
