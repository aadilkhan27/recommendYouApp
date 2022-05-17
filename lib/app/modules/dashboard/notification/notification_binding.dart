import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_controller.dart';

class NotificationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController());
  }

}