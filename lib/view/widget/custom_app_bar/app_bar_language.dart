import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/services/change_local.dart';

class AppBarLanguage extends GetView<LocaleController> {
  const AppBarLanguage({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {

        if (Get.locale!.languageCode == 'ar') {
          controller.changeLang("en");
        } else {
          controller.changeLang("ar");
        }
      },
      child: Text(
        "TextLanguage".tr,
      ),
    );
  }
}
