import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}