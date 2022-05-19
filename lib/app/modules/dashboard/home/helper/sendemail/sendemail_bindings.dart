import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/sendemail/sendemail_controller.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_controller.dart';


class SendEmailBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SendEmailController>(() => SendEmailController());
  }

}