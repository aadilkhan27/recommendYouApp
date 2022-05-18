import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/termscondition_controller.dart';

class TermsConditionBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TermsConditionController>(() => TermsConditionController());
  }

}