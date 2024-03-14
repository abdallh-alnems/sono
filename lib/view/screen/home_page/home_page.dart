import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../widget/home_page/custom_appbar_home/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CustomAppBar());
  }
}
