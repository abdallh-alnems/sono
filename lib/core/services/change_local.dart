import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_services.dart';

class LocaleController extends GetxController {
  Locale? language;
  String? getStorageLang;
  String? fontFamily;
  ThemeMode? themeMode;
  bool? getStorageTheme;
  final RxBool darkTheme = false.obs;

  MyServices myServices = Get.find<MyServices>();

  changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    myServices.getStorage.write("lang", codeLang);
    Get.updateLocale(locale);
    fontFamily = codeLang == "ar" ? "Cairo" : "PlayfairDisplay";
  }

  changModeTheme() {
    darkTheme.toggle();
    myServices.getStorage.write("themeMode", darkTheme.value);
    darkTheme.value == false
        ? Get.changeThemeMode(ThemeMode.light)
        : Get.changeThemeMode(ThemeMode.dark);
  }

  @override
  void onInit() {
    getStorageTheme = myServices.getStorage.read("themeMode");
    if (getStorageTheme == true) {
      themeMode = ThemeMode.dark;
    } else if (getStorageTheme == false) {
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
    fontFamily = getStorageLang == "ar" ? "Cairo" : "PlayfairDisplay";

    super.onInit();
  }
}
