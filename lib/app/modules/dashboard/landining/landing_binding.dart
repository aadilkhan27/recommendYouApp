import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/landining/landing_controller.dart';

class LandingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController());
  }

}