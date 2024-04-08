import 'package:flutter/material.dart';

class ScreenSize
 {

  static double screenHeight = 0.0;
  static double screenWidth = 0.0;
  static double blockSizeHorizontal = 0.0;
  static double blockSizeVertical = 0.0;

  static void init(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

    //  ScreenSize.init(context);
