import 'package:get/get.dart';
import 'package:recommend_you/app/modules/registration/stepfour/step_four_controller.dart';

class StepFourBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StepFourController>(() => StepFourController());
  }

}