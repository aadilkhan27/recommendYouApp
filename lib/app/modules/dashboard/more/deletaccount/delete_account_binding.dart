import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';

import 'delete_account_controller.dart';

class DeleteAccountBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DeleteAccountController>(() => DeleteAccountController());
  }

}