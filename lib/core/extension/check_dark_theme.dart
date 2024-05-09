import 'package:flutter/material.dart';

extension ThemeBrightness on BuildContext {
  bool get exDarkMode => Theme.of(this).brightness == Brightness.dark;
}
