import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Padding(
            padding: EdgeInsets.only(top: Get.height * 0.13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: Get.width * 0.02),
                          duration: const Duration(milliseconds: 550),
                          width: controller.currentPage == index
                              ? Get.width * 0.1
                              : Get.width * 0.018,
                          height: Get.height * 0.008,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.01),
                          ),
                        ))
              ],
            )));
  }
}
