import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/routes/route.dart';
import '../../../logic/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (_) {
      return Padding(
          padding: EdgeInsets.only(
            bottom: Get.width * 0.06,
            right: Get.width * 0.05,
            left: Get.width * 0.06,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controller.currentPage == 2
                  ? Text(
                      '9'.tr,
                      style: TextStyle(color: AppColor.disable),
                    )
                  : GestureDetector(
                      onTap: () {
                        Get.offAllNamed(AppRoute.home);
                      },
                      child: Text(
                        '9'.tr,
                      )),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                  ),
                  elevation: 0,
                
                  textColor: AppColor.buttonText,
                  onPressed: () {
                    controller.next();
                  },
                  color: AppColor.primaryColor,
                  child: controller.currentPage == 2
                      ? Text('8'.tr)
                      : Text("7".tr)),
            ],
          ));
    });
  }
}
