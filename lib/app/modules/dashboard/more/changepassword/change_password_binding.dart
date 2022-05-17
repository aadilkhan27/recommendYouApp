import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_controller.dart';

class ChangePasswordBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }

}