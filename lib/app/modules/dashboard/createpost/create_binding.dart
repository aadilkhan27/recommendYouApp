import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_controller.dart';

class CreateBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CreateController>(() => CreateController());
  }

}