import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'core/constant/routes/get_page.dart';
import 'core/localization/change_local.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'logic/bindings/initial_bindings.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColor.backgroundcolor,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    LocaleController controller = Get.put(LocaleController());

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: DevicePreview.appBuilder,
            initialBinding: InitialBindings(),
            debugShowCheckedModeBanner: false,
            translations: MyTranslation(),
            locale: controller.language,
            getPages: routes,
          );
        });
  }
}
