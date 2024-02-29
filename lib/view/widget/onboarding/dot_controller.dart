import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding: EdgeInsets.only(bottom: 51),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 550),
                          width: controller.currentPage == index ? 31.w : 6.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ))
              ],
            )));
  }
}
