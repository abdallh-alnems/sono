import 'package:flutter/material.dart';
import '../../core/constant/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'home',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
