import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';
import '../../core/constant/image_asset.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
