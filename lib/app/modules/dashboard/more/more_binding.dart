import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_controller.dart';

class MoreBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MoreController>(() => MoreController());
  }

}