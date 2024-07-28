import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sono/core/extension/check_dark_theme.dart';
import '../../../core/services/change_local.dart';

class AppBarThemes extends GetView<LocaleController> {
  const AppBarThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        controller.toggleTheme();
      },
      icon: Icon(context.exDarkMode ? Icons.light_mode : Icons.dark_mode),
    );
  }
}
