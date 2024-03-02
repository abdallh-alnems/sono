import 'package:get/get.dart';

import '../controller/home_screen_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
// ================================ bottom nav bar ======================================
   Get.put(HomeScreenControllerImp());

  }
}
