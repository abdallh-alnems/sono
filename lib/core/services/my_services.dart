import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'change_local.dart';

class MyServices extends GetxService {
  late GetStorage getStorage;

  Future<MyServices> init() async {
    await GetStorage.init();
    getStorage = GetStorage();

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());

  Get.put(LocaleController());

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}
