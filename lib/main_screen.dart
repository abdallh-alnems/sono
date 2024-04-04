import 'package:flutter/material.dart';

import 'core/responsive/responsive_layout.dart';
import 'view/screen/home_screen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody:HomeScreen(),
          tabletBody: Container(
              color: Colors.green,
              child: (Center(
                child: (Text(
                  "tablet",
                  style: TextStyle(fontSize: 45),
                )),
              ))),
          webBody: Container(
              color: Colors.red,
              child: (Center(
                child: (Text(
                  "desktop",
                  style: TextStyle(fontSize: 45),
                )),
              )))),
    );
  }
}
