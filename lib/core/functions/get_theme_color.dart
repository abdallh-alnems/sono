
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color getThemeColor(BuildContext context) {
  final Brightness brightnessValue = Theme.of(context).brightness;
  return brightnessValue == Brightness.light ? Colors.black : Colors.white;
}
