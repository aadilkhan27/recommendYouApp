import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_controller.dart';

import 'helper_controller.dart';

class HelperBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HelperController>(() => HelperController());
  }

}