import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/functions/get_theme_color.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double horizontal = ScreenSize.blockSizeHorizontal;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ScreenSize.blockSizeVertical * 2,
        horizontal: BaseWidget.isMobile()
            ? horizontal * 10
            : horizontal * 25,
      ),
      width: ScreenSize.screenWidth,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
             foregroundColor: getThemeColor(context),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: GeneralAppColor.primaryColor,
                ),
              )),
          onPressed: () {
            controller.next();
          },
          child: controller.currentPage != 4
              ? Text(
                  "OnBoContinue".tr,
                )
              : Text(
                  'OnBoStart'.tr,
                )),
    );
  }
}
