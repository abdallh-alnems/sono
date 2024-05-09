import 'package:get/get.dart';
import '../../core/services/my_services.dart';

abstract class SettingsController extends GetxController {}

class SettingsControllerImp extends SettingsController {
  final RxBool iconMenu = false.obs;

  void toggleMenuIcon() => iconMenu.toggle();
}
