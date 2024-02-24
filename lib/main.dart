import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'core/constant/routes/get_page.dart';
import 'core/localization/change_local.dart';
import 'core/localization/translation.dart';
import 'logic/bindings/initial_bindings.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColor.backgroundcolor,
    statusBarIconBrightness:  Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      
      initialBinding: InitialBindings(),
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      getPages: routes,
    );
  }
}
