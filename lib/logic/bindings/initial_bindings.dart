
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/localization/change_local.dart';
import '../../core/responsive/screen_size.dart';
import '../controller/home_screen_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
// ================================ bottom nav bar ======================================
   Get.put(HomeScreenControllerImp());


  }
}
