import 'package:flutter/material.dart';

import 'core/responsive/responsive_layout.dart';
import 'view/screen/home_screen.dart';
import 'view/screen/language.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: HomeScreen(),
          tabletBody: HomeScreen(),
          webBody: HomeScreen()),
    );
  }
}
