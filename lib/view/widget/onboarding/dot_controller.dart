import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomDotControllerOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenSize.screenWidth;
    double horizontal = ScreenSize.blockSizeHorizontal;
    double vertical = ScreenSize.blockSizeVertical;
    bool base = BaseWidget.isTablet();

    return Padding(
      padding: EdgeInsets.only(bottom: vertical * 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
              (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: horizontal * 1.3),
                    duration: const Duration(milliseconds: 550),
                    width: controller.currentPage == index
                        ? base
                            ? width * .07
                            : width * .09
                        : base
                            ? width * .009
                            : width * .015,
                    height: base ? width * .009 : width * .015,
                    decoration: BoxDecoration(
                      color: GeneralAppColor.primaryColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ))
        ],
      ),
    );
  }
}
