import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/routes/route.dart';
import '../../core/services/my_services.dart';
import '../../data/data_source/static/onboarding_static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      myServices.getStorage.write("step", "1");
      Get.offAllNamed(AppRoute.homeScreen);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  skip() {
    myServices.getStorage.write("step", "1");
    Get.offAllNamed(AppRoute.homeScreen);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
