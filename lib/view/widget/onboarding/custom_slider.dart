import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Get.height * 0.03,
                  ),
                  child: Image.asset(
                    onBoardingList[i].image!,
                    height: Get.height / 2.3,
                    width: Get.height * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                Text(onBoardingList[i].title!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.05,
                        color: AppColor.black)),
                SizedBox(
                  height: Get.width * 0.05,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: Get.height * 0.0025,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.width * 0.035,
                      ),
                    )),
              ],
            ));
  }
}
