import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  String? getStorageLang;
  ThemeMode? themeMode;
  String? getStorageTheme;

  MyServices myServices = Get.find<MyServices>();



  changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    myServices.getStorage.write("lang", codeLang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    getStorageTheme = myServices.getStorage.read("themeMode");
    if (getStorageTheme == "darkTheme") {
      themeMode = ThemeMode.dark;
    } else if (getStorageTheme == "lightTheme") {
      themeMode = ThemeMode.light;

    } else {
      themeMode = ThemeMode.system;

    }

    getStorageLang = myServices.getStorage.read("lang");
    if (getStorageLang == "en") {
      language = const Locale("en");
    } else {
      language = const Locale("ar");
    }
    
    super.onInit();
  }

}
