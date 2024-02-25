import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../core/constant/color.dart';
import '../widget/home_page/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: CustomAppBar()),
        // extendBody: true,
        bottomNavigationBar: BottomNavigationBar(items: [],));
  }
}
