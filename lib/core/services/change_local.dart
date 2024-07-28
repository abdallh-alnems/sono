import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_services.dart';

enum AppThemewwww { light, dark }
enum AppLanguage { en, ar }

class LocaleController extends GetxController {
  final MyServices _myServices = Get.find<MyServices>();

  late Locale _language;
  late String _fontFamily;
  late ThemeMode _themeMode;
  final Rx<AppThemewwww> _appTheme = AppThemewwww.light.obs;

  Locale get language => _language;
  String get fontFamily => _fontFamily;
  ThemeMode get themeMode => _themeMode;

  @override
  void onInit() {
    _initLanguage();
    _initTheme();
    super.onInit();
  }

  void _initLanguage() {
    final storedLang = _myServices.getStorage.read("lang");
    _language = storedLang == "ar" ? const Locale("ar") : const Locale("en");
    _fontFamily = storedLang == "ar" ? "Cairo" : "PlayfairDisplay";
    Get.updateLocale(_language);
  }

  void _initTheme() {
    final storedTheme = _myServices.getStorage.read("themeMode");
    _themeMode = storedTheme != null ? _getThemeMode(storedTheme) : ThemeMode.system;
    _themeMode == ThemeMode.dark ? _appTheme(AppThemewwww.dark) : _appTheme(AppThemewwww.light);
    Get.changeThemeMode(_themeMode);
  }

  void changeLanguage(AppLanguage language) {
    _language = language == AppLanguage.ar ? const Locale("ar") : const Locale("en");
    _fontFamily = language == AppLanguage.ar ? "Cairo" : "PlayfairDisplay";
    _myServices.getStorage.write("lang", language.toString().split('.').last);
    Get.updateLocale(_language);
  }

  void toggleTheme() {
    _appTheme.value = _appTheme.value == AppThemewwww.light ? AppThemewwww.dark : AppThemewwww.light;
    _themeMode = _appTheme.value == AppThemewwww.light ? ThemeMode.light : ThemeMode.dark;
    _myServices.getStorage.write("themeMode", _appTheme.value == AppThemewwww.dark);
    Get.changeThemeMode(_themeMode);
  }


  ThemeMode _getThemeMode(bool isDark) {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
