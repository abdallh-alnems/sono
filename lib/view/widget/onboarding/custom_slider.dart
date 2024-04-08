import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Image.asset(
                  onBoardingList[i].image!,
                  width: screenWidth,
                  height: screenHeight * .43,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: screenHeight * .04,
                ),
                Text(onBoardingList[i].title!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: AppColor.black)),
                SizedBox(
                  height: screenHeight * .03,
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .05),
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: screenHeight * .0025,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 11.sp,
                      ),
                    )),
              ],
            ));
  }
}
