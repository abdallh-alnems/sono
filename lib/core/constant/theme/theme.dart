import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../utilization/change_local.dart';
import '../../services/services.dart';
import 'color.dart';
import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/icon_theme.dart';
import 'custom_themes/text_filed_theme.dart';
import 'custom_themes/text_theme.dart';

class AppTheme {
  static LocaleController controller = Get.find<LocaleController>();
  static String fontFamily =
      controller.getStorageLang == "en" ? "PlayfairDisplay" : "Cairo";

  static ThemeData lightTheme() => ThemeData(
        fontFamily: fontFamily,
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: AppColor.primarySwatchColor,
        textTheme: TTextTheme.lightTextTheme(),
        appBarTheme: AAppBarTheme.lightAppBarTheme(),
        elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme(),
        iconTheme: IIconTheme.lightIconTheme(),
        inputDecorationTheme: TTextFormFiledTheme.lightTextFormFiledTheme(),
      );

  static ThemeData darkTheme() => ThemeData(
        fontFamily: fontFamily,
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: AppColor.primarySwatchColor,
        textTheme: TTextTheme.darkTextTheme(),
        appBarTheme: AAppBarTheme.darkAppBarTheme(),
        elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme(),
        iconTheme: IIconTheme.darkIconTheme(),
        inputDecorationTheme: TTextFormFiledTheme.darkTextFormFiledTheme(),
      );
}
