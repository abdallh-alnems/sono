import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constant/routes/route.dart';
import '../../core/constant/theme/theme.dart';
import '../../core/utilization/change_local.dart';
import '../../core/services/services.dart';
import '../widget/language/custom_button_lang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.find<LocaleController>();
    MyServices myServices = Get.find<MyServices>();

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("اختر اللغة", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 20),
        CustomButtonLang(
            textButton: "العربية",
            onPressed: () {
              controller.changeLang("ar");
              Get.toNamed(AppRoute.onBoarding);
            }),
        CustomButtonLang(
            textButton: "English",
            onPressed: () {
              controller.changeLang("en");
              Get.toNamed(AppRoute.onBoarding);
            }),
        IconButton(
            onPressed: () {
              Brightness brightness = Get.theme.brightness;

              if (brightness == Brightness.dark) {
                Get.changeThemeMode(ThemeMode.light);
                myServices.getStorage.write('themeMode', "lightTheme");
              } else {
                Get.changeThemeMode(ThemeMode.dark);
                myServices.getStorage.write('themeMode', "darkTheme");
              }
            },
            icon:
                Get.isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode))
      ],
    ));
  }
}
