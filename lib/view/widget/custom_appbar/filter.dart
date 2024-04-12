import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/constant/image_asset.dart';
import '../../../core/responsive/screen_size.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
        double width = ScreenSize.screenWidth;

    return Container(
      width: 51,
      height: 51,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: GeneralAppColor.backGroundWidget,
      ),
      child: Image.asset(
        AppImageAsset.filterAppBar,
        scale: 1.35,
      ),
    );
  }
}
