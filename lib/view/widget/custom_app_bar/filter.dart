import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/theme/color/general_color.dart';
import '../../../core/constant/image_asset.dart';
import '../../../core/responsive/screen_size.dart';
import '../../../core/services/my_services.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();

    return GestureDetector(
      onTap: () {
        myServices.getStorage.erase();
        print("delet");
      },
      child: Container(
        width: 41,
        height: 41,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: GeneralAppColor.backGroundWidget,
        ),
        child: Image.asset(
          AppImageAsset.filterAppBar,
          scale: 1.39,
        ),
      ),
    );
  }
}
