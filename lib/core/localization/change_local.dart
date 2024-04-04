import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/apptheme.dart';
import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

   ThemeData appTheme = themeEnglish;

  changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    myServices.getStorage.write("lang", codeLang);
     appTheme = codeLang == "ar" ? themeArabic : themeEnglish;
     Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // String? getStorageLang = myServices.getStorage.read('lang');
    // if (getStorageLang == "ar") {
    //   language = const Locale("ar");
    //   //  appTheme = themeArabic;
    // } else if (getStorageLang == "en") {
    //   language = const Locale("en");
    //   // appTheme = themeEnglish;
    // } else {
    //   language = Locale(Get.deviceLocale!.languageCode);
    //   //  appTheme = themeEnglish;
    // }
    language = Locale(Get.deviceLocale!.languageCode);
    super.onInit();
  }
}
