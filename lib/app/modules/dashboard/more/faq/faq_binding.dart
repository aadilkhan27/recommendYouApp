import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/faq/faq_controller.dart';

class FaqBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FaqController>(() => FaqController());
  }

}