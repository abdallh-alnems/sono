import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../logic/controller/onboarding_controller.dart';

class SkipButton extends GetView<OnBoardingControllerImp> {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
       bool  size = BaseWidget.isTablet();

  double horizontal = ScreenSize.blockSizeHorizontal;
    double vertical = ScreenSize.blockSizeVertical;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal * 7, vertical: vertical * 1.7),
        child: controller.currentPage != 4
            ? GestureDetector(
                onTap: () {
                  controller.skip();
                },
                child: Text(
                  'OnBoSkip'.tr,
                  style: TextStyle(fontSize:size ? 10.sp : 15.sp),
                ))
            : Text(
                '',
              ));
  }
}
