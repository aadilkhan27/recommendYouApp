import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_controller.dart';

class ChangeContactBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ChangeContactController>(() => ChangeContactController());
  }

}