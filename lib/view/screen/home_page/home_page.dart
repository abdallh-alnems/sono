import 'package:flutter/material.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../widget/custom_appbar/appbar_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CustomAppBar());
  }
}
