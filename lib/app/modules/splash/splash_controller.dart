import 'dart:async';

import 'package:recommend_you/app/routes/pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 3), () {
      goTo();
    });
  }

goTo() {
    // if (Storage.hasData(Storage.TOKEN) && Storage.getValue(Storage.NAME) == null) {
    //   Get.offNamed(Routes.NAME);
    // } else if (Storage.hasData(Storage.TOKEN) && Storage.getValue(Storage.USER_STREET) == null) {
    //   Get.offNamed(Routes.ADD_LOCATION);
    // } else if (Storage.hasData(Storage.TOKEN)) {
    //   Get.offNamed(Routes.DASHBOARD);
    // } else {
      Get.offNamed(Routes.languageSelection);
    // }
  }
}
