import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/privacypolicy/privacy_policy_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/termscondition_controller.dart';

class PrivacyPolicyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PrivacyPolicyController>(() => PrivacyPolicyController());
  }

}