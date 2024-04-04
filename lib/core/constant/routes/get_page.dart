import 'package:get/get.dart';

import '../../../test.dart';
import '../../../view/screen/home_page/icons_home/add_ads/add.dart';
import '../../../view/screen/home_page/icons_home/favorite.dart';
import '../../../view/screen/home_page/icons_home/notifications.dart';
import '../../../view/screen/home_screen.dart';
import '../../../view/screen/home_page/home_page.dart';
import '../../../view/screen/language.dart';
import '../../../view/screen/onboarding.dart';
import '../../middleware/my_middleware.dart';
import 'route.dart';

List<GetPage<dynamic>> routes = [

    GetPage(name: AppRoute.test, page: () => Test()),

  // ============================== root =======================================

  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
        GetPage(name: AppRoute.onBoarding, page: () => OnBoarding()),

      

  // ============================== Home screen ================================

  GetPage(name: AppRoute.homeScreen, page: () => HomeScreen()),

  // ============================== Home page ==================================

  GetPage(
      name: AppRoute.favorites,
      page: () => Favorites(),
      transition: Transition.downToUp),

  GetPage(
      name: AppRoute.notifications,
      page: () => Notifications(),
      transition: Transition.downToUp),

  GetPage(
      name: AppRoute.add, page: () => Add(), transition: Transition.downToUp),
];
