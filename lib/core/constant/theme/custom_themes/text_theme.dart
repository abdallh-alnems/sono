import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TTextTheme {
  static TextTheme lightTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w400,
          color: Colors.green,
        ),
      );

  static TextTheme darkTextTheme() => TextTheme(
        titleLarge: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w400,
          color: Colors.green,
        ),
      );
}
