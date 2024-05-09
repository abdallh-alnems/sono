import 'package:flutter/material.dart';
import '../constant/theme/color/dark_color.dart';
import '../constant/theme/color/light_color.dart';

Color getThemeColor(BuildContext context) {
  final Brightness brightnessValue = Theme.of(context).brightness;
  return brightnessValue == Brightness.light
      ? LightAppColor.foregroundColor
      : DarkAppColor.foregroundColor;
}
