import 'package:get/get.dart';
import 'package:recommend_you/app/modules/login/otpverification/otp_verification_controller.dart';

class OtpVerficationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OtpVerificationController>(() => OtpVerificationController());
  }

}