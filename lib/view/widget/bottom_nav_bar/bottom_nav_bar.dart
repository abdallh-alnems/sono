import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/responsive/base_widget.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../logic/controller/home_screen_controller.dart';
import 'animated_container.dart';

class MyBottomNavBar extends GetView<HomeScreenControllerImp> {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    double horizontal = ScreenSize.blockSizeHorizontal;
    double width = ScreenSize.screenWidth;
    double height = ScreenSize.screenHeight;

    int currentPage = controller.currentPage;

    return Visibility(
      visible: BaseWidget.isMobile(),
      child: Container(
        margin: EdgeInsets.all(horizontal * 5),
        height: height * .07,
        decoration: BoxDecoration(
          color: GeneralAppColor.backGroundWidget,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: horizontal * 2),
          itemBuilder: (context, index) => InkWell(
            onTap: () => controller.changePage(index),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(children: [
              AnimatedBottomNavBar(
                width: index == currentPage ? width * .32 : width * .18,
                child: AnimatedBottomNavBar(
                  width: index == currentPage ? width * .32 : 0,
                  height: index == currentPage ? height * .05 : 0,
                  color: index == currentPage
                      ? GeneralAppColor.primaryColor.withOpacity(.8)
                      : Colors.transparent,
                  circular: 50.r,
                ),
              ),
              AnimatedBottomNavBar(
                width:
                    index == controller.currentPage ? width * .31 : width * .18,
                child: Stack(children: [
                  Row(children: [
                    AnimatedBottomNavBar(
                      width: index == controller.currentPage ? width * .14 : 0,
                    ),
                    AnimatedOpacity(
                      opacity: index == controller.currentPage ? 1 : 0,
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: Text(
                        index == controller.currentPage
                            ? '${controller.listOfStrings[index]}'
                            : '',
                        style: TextStyle(
                          color: GeneralAppColor.whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                  ]),
                  Row(
                    children: [
                      AnimatedBottomNavBar(
                        width:
                            index == controller.currentPage ? width * .035 : 20,
                      ),
                      Icon(
                        controller.listOfIcons[index],
                        size: 25.sp,
                        color: index == controller.currentPage
                            ? GeneralAppColor.whiteColor
                            : GeneralAppColor.black26Color
                      ),
                    ],
                  )
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
