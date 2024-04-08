import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomDotControllerOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.only(bottom: screenHeight * .075),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                      margin: EdgeInsets.only(right: screenWidth * .013),
                      duration: const Duration(milliseconds: 550),
                      width: controller.currentPage == index
                          ? screenWidth * .09
                          : screenWidth * .015,
                      height: screenWidth * .015,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ))
          ],
        ));
  }
}
