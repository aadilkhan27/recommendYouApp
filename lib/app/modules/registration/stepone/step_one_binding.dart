import 'package:get/get.dart';
import 'package:recommend_you/app/modules/registration/stepone/step_one_controller.dart';

class StepOneBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StepOneController>(() => StepOneController());
  }

}