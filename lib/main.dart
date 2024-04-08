import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/constant/routes/get_page.dart';
import 'core/constant/theme/theme.dart';
import 'core/utilization/change_local.dart';
import 'core/utilization/localization/translation.dart';
import 'core/responsive/screen_size.dart';
import 'core/services/services.dart';
import 'logic/bindings/initial_bindings.dart';

void main() async {
  await initialServices();
   SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:   Brightness.dark ,
    ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    LocaleController controller = Get.find<LocaleController>();

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialBinding: InitialBindings(),
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
          themeMode: controller.themeMode!,
            translations: MyTranslation(),
            locale: controller.language,
            getPages: routes,
          );
        });
  }
}
