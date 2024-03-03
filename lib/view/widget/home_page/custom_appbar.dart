import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import 'package:sono/core/constant/image_asset.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: AppColor.primaryColor,
                        size: 21.sp,
                      )),
                ],
              ),
              Text('Sono')
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * .04,
          ),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                // controller: mycontroller,
                // onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: '10'.tr,
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * .01),
                    child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: AppColor.primaryColor,
                          size: 21.sp,
                        ),
                        onPressed: () {}),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(40)),
                  filled: true,
                  fillColor: AppColor.backGroundIcon,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: screenHeight * .017),
                ),
              )),
              SizedBox(
                width: screenWidth * .05,
              ),
              Container(
                width: 53,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColor.backGroundIcon,
                ),
                child: Image.asset(
                  AppImageAsset.home,
                  scale: 1.35,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
