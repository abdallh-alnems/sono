import 'package:get/get.dart';
import '../../../view/screen/home.dart';
import '../../../view/screen/onboarding.dart';
import 'route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/", page: () => const OnBoarding(),
    // middlewares: [MyMiddleWare()]
  ),
  GetPage(name: AppRoute.home, page: () => const Home()),
];
