import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (_) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: 13,
        ),
        child: Center(
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: AppColor.primaryColor,
                ),
              ),
              minWidth: MediaQuery.of(context).size.width * 0.5,
              onPressed: () {
                controller.next();
              },
              child: controller.currentPage != 2 ? Text("7".tr) : Text('8'.tr)),
        ),
      );
    });
  }
}
