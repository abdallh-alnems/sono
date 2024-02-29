import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../logic/controller/onboarding_controller.dart';

class SkipButton extends GetView<OnBoardingControllerImp> {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 19),
        child: controller.currentPage != 2
            ? GestureDetector(
                onTap: () {
                  controller.skip();
                },
                child: Text(
                  '9'.tr,
                  style: TextStyle(fontSize: 15.sp),
                ))
            : null);
  }
}
