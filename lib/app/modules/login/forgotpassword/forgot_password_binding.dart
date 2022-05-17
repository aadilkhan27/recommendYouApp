import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:recommend_you/app/modules/login/forgotpassword/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController());
  }

}