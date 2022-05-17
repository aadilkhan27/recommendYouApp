import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:recommend_you/app/core/values/keys.dart';

class AppConfigService extends GetxService {
  Future<AppConfigService> init() async {
    box = GetStorage();
    await box?.writeIfNull(THEME, false);
    Get.changeTheme(box?.read(THEME) ? ThemeData.dark() : ThemeData.light());
    print(this.getTheme().toString());
    return this;
  }

  final message = ''.obs;
  GetStorage? box;

  bool getTheme() => this.box?.read(THEME);

  changeTheme(bool b) async {
    Get.changeTheme(b ? ThemeData.dark() : ThemeData.light());
    await this.box?.write(THEME, b);
  }
}
