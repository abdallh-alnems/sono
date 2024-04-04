import 'package:double_tap_to_exit/double_tap_to_exit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import '../../core/responsive/responsive_screen.dart';
import '../../logic/controller/home_screen_controller.dart';
import '../widget/bottom_nav_bar/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    Get.find<HomeScreenControllerImp>();

    return GetBuilder<HomeScreenControllerImp>(builder: (controller) {
      return DoubleTapToExit(
        snackBar: SnackBar(
          content: Text('15'.tr,style: TextStyle(fontSize: 13),),
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          margin: EdgeInsets.symmetric(vertical: ScreenUtils.screenHeight * .11 , horizontal: screenWidth * .15 ),
        ),
        child: Scaffold(
          body: controller.listPage.elementAt(controller.currentPage),
          bottomNavigationBar: MyBottomNavBar(),
        ),
      );
    });
  }
}
