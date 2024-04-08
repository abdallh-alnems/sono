import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EElevatedButtonTheme{

  static ElevatedButtonThemeData lightElevatedButtonTheme() => ElevatedButtonThemeData(
 style: ElevatedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,
  backgroundColor: Colors.blue,
  textStyle: TextStyle(fontSize: 16.sp)
 )
   
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme() => ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,
  backgroundColor: Colors.blue,
  textStyle: TextStyle(fontSize: 16.sp)
 )
   
      );

}