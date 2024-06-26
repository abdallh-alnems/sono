import 'package:flutter/material.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/responsive/responsive_layout.dart';
import '../../widget/custom_app_bar/app_bar_mobile.dart';
import '../../widget/custom_app_bar/app_bar_tablet.dart';
import '../../widget/custom_app_bar/app_bar_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ResponsiveLayout(
      mobileBody: AppBarMobile(),
      tabletBody: AppBarTablet(),
      webBody: AppBarWeb(),
    ));
  }
}
