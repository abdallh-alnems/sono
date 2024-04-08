import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight * .02,
      ),
      child: Center(
        child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
              side: BorderSide(
                color: AppColor.primaryColor,
              ),
            ),
            minWidth: screenWidth * 0.5,
            onPressed: () {
              controller.next();
            },
            child: controller.currentPage != 2
                ? Text(
                    "7".tr,
                    style: TextStyle(fontSize: 13.sp),
                  )
                : Text(
                    '8'.tr,
                    style: TextStyle(fontSize: 13.sp),
                  )),
      ),
    );
  }
}
