import 'package:flutter/material.dart';

class GeneralAppColor {
  // ============================== Primary Swatch Color =======================

  static MaterialColor primarySwatchColor = MaterialColor(
    0xffe74c3c,
    <int, Color>{
      50: const Color(0xffe74c3c).withOpacity(0.1),
      100: const Color(0xffe74c3c).withOpacity(0.2),
      200: const Color(0xffe74c3c).withOpacity(0.3),
      300: const Color(0xffe74c3c).withOpacity(0.4),
      400: const Color(0xffe74c3c).withOpacity(0.5),
      500: const Color(0xffe74c3c).withOpacity(0.6),
      600: const Color(0xffe74c3c).withOpacity(0.7),
      700: const Color(0xffe74c3c).withOpacity(0.8),
      800: const Color(0xffe74c3c).withOpacity(0.9),
      900: const Color(0xffe74c3c).withOpacity(1),
    },
  );
  // ============================= button ======================================

  static const Color buttonColor = Color(0xffe74c3c);

  static const Color buttonTextColor = Colors.white;

  // ============================== text =======================================

  static const Color textBodyColor = Color(0xff8e8e8e);

  static const Color lightTextTitle = Color(0xff000000);

  static const Color darkTextTitle = Colors.white;

  static const Color lightTextBody = Color(0xff8e8e8e);

  static const Color black = Color(0xff000000);
  static const Color disable = Color.fromARGB(255, 198, 195, 195);
  // static Color backGroundIcon = Colors.grey[300];
  static Color backGroundIcon = const Color(0xffE0E0E0);

  static const Color backgroundcolor = Colors.white;
  static const Color primaryColor = Color(0xffe74c3c);
}
