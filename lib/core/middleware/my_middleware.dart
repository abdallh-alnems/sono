import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/routes/route.dart';
import '../services/my_services.dart';

class MyMiddleWare extends GetMiddleware {


  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {

    if (myServices.getStorage.read("step") == "1") {
      return const RouteSettings(name: AppRoute.homeScreen);
    }

    return null;
  }
}
