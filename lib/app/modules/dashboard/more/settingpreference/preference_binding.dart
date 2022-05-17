import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/settingpreference/preference_controller.dart';

class ContactUsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PreferenceController>(() => PreferenceController());
  }

}