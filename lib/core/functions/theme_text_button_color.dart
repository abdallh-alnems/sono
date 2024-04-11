import 'package:flutter/material.dart';

Color getTextButtonColor(BuildContext context) {
  final Brightness brightnessValue = Theme.of(context).brightness;
  return brightnessValue == Brightness.light ? Colors.black : Colors.white;
}
