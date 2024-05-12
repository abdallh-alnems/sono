import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AAppBarTheme {
  static AppBarTheme lightAppBarTheme() => AppBarTheme(
    elevation: 0,
    centerTitle: true,

   
  );

  static AppBarTheme darkAppBarTheme() => AppBarTheme(
     elevation: 0,
centerTitle: true,
      );
}
