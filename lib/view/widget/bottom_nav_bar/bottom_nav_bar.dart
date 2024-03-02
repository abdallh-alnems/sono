import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../logic/controller/home_screen_controller.dart';
import 'animated_container.dart';

class MyBottomNavBar extends GetView<HomeScreenControllerImp> {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    int currentPage = controller.currentPage;

    return Container(
      margin: EdgeInsets.all(screenWidth * .05),
      height: screenHeight * .07,
      decoration: BoxDecoration(
        color: AppColor.backGroundIcon,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: ListView.builder( 
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: screenWidth * .02),
        itemBuilder: (context, index) => InkWell(
          onTap: () => controller.changePage(index),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(children: [
            AnimatedBottomNavBar(
              width:
                  index == currentPage ? screenWidth * .32 : screenWidth * .18,
              child: AnimatedBottomNavBar(
                width: index == currentPage ? screenWidth * .32 : 0,
                height: index == currentPage ? screenHeight * .05 : 0,
                color: index == currentPage
                    ? AppColor.primaryColor.withOpacity(.8)
                    : Colors.transparent,
                circular: 50.r,
              ),
            ),
            AnimatedBottomNavBar(
              width: index == controller.currentPage
                  ? screenWidth * .31
                  : screenWidth * .18,
              child: Stack(children: [
                Row(children: [
                  AnimatedBottomNavBar(
                    width:
                        index == controller.currentPage ? screenWidth * .14 : 0,
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
                        color: AppColor.backgroundcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ]),
                Row(
                  children: [
                    AnimatedBottomNavBar(
                      width: index == controller.currentPage
                          ? screenWidth * .035
                          : 20,
                    ),
                    Icon(
                      controller.listOfIcons[index],
                      size: 25.sp,
                      color: index == controller.currentPage
                          ? AppColor.backgroundcolor
                          : Colors.black26,
                    ),
                  ],
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
