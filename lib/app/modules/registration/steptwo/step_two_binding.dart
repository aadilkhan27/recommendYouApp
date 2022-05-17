import 'package:get/get.dart';
import 'package:recommend_you/app/modules/registration/steptwo/step_two_controller.dart';

class StepTwoBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StepTwoController>(() => StepTwoController());
  }

}