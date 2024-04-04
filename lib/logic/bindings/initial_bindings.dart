
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../core/responsive/responsive_screen.dart';
import '../controller/home_screen_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
// ================================ bottom nav bar ======================================
   Get.put(HomeScreenControllerImp());



  }
}
