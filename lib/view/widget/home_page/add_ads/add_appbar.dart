import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sono/uzzzzzz/size_extension.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/routes/route.dart';
import '../../../../core/constant/theme/color/general_color.dart';

class AddAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final bool showLeadingIcon;
  const AddAppBar(
      {super.key, required this.title, this.showLeadingIcon = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: title,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: GeneralAppColor.primaryColor,
              size: 23.sp,
            ),
            onPressed: () {
              Get.offAllNamed(AppRoute.homeScreen);
            },
          ),
        ],
        leading: showLeadingIcon == true
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: GeneralAppColor.primaryColor,
                  size: 21.sp,
                ),
                onPressed: () {
                  Get.back();
                },
              )
            : null);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
