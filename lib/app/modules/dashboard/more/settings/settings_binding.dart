import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/settings/settings_controller.dart';

class SettingsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }

}