import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/responsive_layout.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../data/data_source/static/onboarding_static.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = ScreenSize.screenWidth;
    double height = ScreenSize.screenHeight;
    double horizontal = ScreenSize.blockSizeHorizontal;

    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => BaseWidget.isTablet()
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    onBoardingList[i].image!,
                    width: width * .47,
                    height: height * .47,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: width * .45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(onBoardingList[i].title!,
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(
                          height: height * .03,
                        ),
                        Text(onBoardingList[i].body!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Image.asset(
                    onBoardingList[i].image!,
                    width: width,
                    height: height * .43,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: height * .04,
                  ),
                  Text(onBoardingList[i].title!,
                       style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(
                    height: height * .03,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontal * 5),
                      child: Text(onBoardingList[i].body!,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge)),
                ],
              ));
  }
}
