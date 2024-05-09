import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../services/change_local.dart';
import '../../services/my_services.dart';
import 'color/general_color.dart';
import 'color/dark_color.dart';
import 'color/light_color.dart';
import 'elements_theme/app_bar_theme.dart';
import 'elements_theme/elevated_button_theme.dart';
import 'elements_theme/icon_theme.dart';
import 'elements_theme/text_filed_theme.dart';
import 'elements_theme/text_theme.dart';

class AppTheme {
  static LocaleController controller = Get.find<LocaleController>();
 
  static ThemeData lightTheme() => ThemeData(
        fontFamily: controller.fontFamily,
        useMaterial3: true,
        brightness: Brightness.light,
        primarySwatch: GeneralAppColor.primarySwatchColor,
        textTheme: TTextTheme.lightTextTheme(),
        appBarTheme: AAppBarTheme.lightAppBarTheme(),
        elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme(),
        iconTheme: IIconTheme.lightIconTheme(),
        inputDecorationTheme: TTextFormFiledTheme.lightTextFormFiledTheme(),
      );

  static ThemeData darkTheme() => ThemeData(
        fontFamily: controller.fontFamily,
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: GeneralAppColor.primarySwatchColor,
        textTheme: TTextTheme.darkTextTheme(),
        appBarTheme: AAppBarTheme.darkAppBarTheme(),
        elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme(),
        iconTheme: IIconTheme.darkIconTheme(),
        inputDecorationTheme: TTextFormFiledTheme.darkTextFormFiledTheme(),
      );
}
