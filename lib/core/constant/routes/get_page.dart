import 'package:get/get.dart';
import '../../../view/screen/bottom_nav_bar.dart';
import '../../../view/screen/home_page.dart';
import '../../../view/screen/onboarding.dart';
import '../../middleware/my_middleware.dart';
import 'route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/", page: () => const OnBoarding(),
     middlewares: [MyMiddleWare()]
  ),
  GetPage(name: AppRoute.bottomNavBar, page: () =>  MyBottomNavBar()),
];
