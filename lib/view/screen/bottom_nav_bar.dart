import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import '../../logic/controller/bottom_navigation_bar_controller.dart';
import '../widget/bottom_nav_bar/view_builder.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(BottomNavControllerImp());
    
    return GetBuilder<BottomNavControllerImp>(builder: (controller) {
      return Scaffold(
          body: controller.listPage.elementAt(controller.currentPage),
          bottomNavigationBar: ViewBuilderBottomNavBar());
    });
  }
}
