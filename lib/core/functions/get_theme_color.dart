
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/theme/color/general_color.dart';

Color getThemeColor(BuildContext context) {
  final Brightness brightnessValue = Theme.of(context).brightness;
  return brightnessValue == Brightness.light ? GeneralAppColor.blackColor : GeneralAppColor.whiteColor;
}
