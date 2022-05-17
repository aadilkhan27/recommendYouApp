import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_controller.dart';
import 'package:recommend_you/app/modules/dashboard/dashboard_controller.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_controller.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_controller.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NotificationController>(() => NotificationController());
    Get.lazyPut<CreateController>(() => CreateController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<MoreController>(() => MoreController());
  }
}
