import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/theme/color/general_color.dart';
import '../../core/package/tap_to_exit.dart';
import '../../core/responsive/base_widget.dart';
import '../../core/responsive/responsive_layout.dart';
import '../../core/responsive/screen_size.dart';
import '../../logic/controller/home_screen_controller.dart';
import '../widget/bottom_nav_bar/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Get.find<HomeScreenControllerImp>();

    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return TapToExit(
        child: Scaffold(
          body: controller.listPage.elementAt(controller.currentPage),
          bottomNavigationBar:    MyBottomNavBar() ,
        ),
      );
    });
  }
}
