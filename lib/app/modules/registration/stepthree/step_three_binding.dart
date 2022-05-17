import 'package:get/get.dart';
import 'package:recommend_you/app/modules/registration/stepthree/step_three_controller.dart';

class StepThreeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StepThreeController>(() => StepThreeController());
  }

}