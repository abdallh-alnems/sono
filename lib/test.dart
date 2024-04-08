// app_theme.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/constant/theme/color.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      fontFamily: "Cairo",
      useMaterial3: true,
      brightness: Brightness.dark,
      primarySwatch: AppColor.primarySwatchColor,
      scaffoldBackgroundColor: Colors.blue,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 23.sp,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }

  static ThemeData getAppThemed() {
    return ThemeData(
      fontFamily: "Cairo",
      useMaterial3: true,
      brightness: Brightness.dark,
      primarySwatch: AppColor.primarySwatchColor,
      scaffoldBackgroundColor: Colors.yellow,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 23.sp,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }
}


//  Brightness brightness = Get.theme.brightness;

//               if (brightness == Brightness.dark) {
//                 Get.changeThemeMode(ThemeMode.light);
//                 myServices.getStorage.write('themeMode', "lightTheme");
//               } else {
//                 Get.changeThemeMode(ThemeMode.dark);
//                 myServices.getStorage.write('themeMode', "darkTheme");
//               }

// main_theme.dart


// main_theme.dart




