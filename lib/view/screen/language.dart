import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/routes/route.dart';
import '../../core/responsive/screen_size.dart';
import '../../core/services/change_local.dart';
import '../widget/language/custom_button_lang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "اختر اللغة",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: ScreenSize.screenHeight * .1),
        CustomButtonLang(
            textButton: "العربية",
            onPressed: () {
              controller.changeLanguage(AppLanguage.ar);
              Get.toNamed(AppRoute.onBoarding);
            }),
        CustomButtonLang(
            textButton: "English",
            onPressed: () {
              controller.changeLanguage(AppLanguage.en);
              Get.toNamed(AppRoute.onBoarding);
            }),
      ],
    ));
  }
}
