import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/routes/pages.dart';

class ChangeLanguageController extends GetxController with GetSingleTickerProviderStateMixin{
  @override
  void onInit() {
    super.onInit();
    Get.toNamed(Routes.changeLanguage);
  }
}