import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:recommend_you/app/modules/login/forgotusername/forgot_username_controller.dart';

class ForgotUsernameBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ForgotUsernameController>(() => ForgotUsernameController());
  }

}