import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:recommend_you/app/modules/login/signin/sign_in_controller.dart';

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }

}