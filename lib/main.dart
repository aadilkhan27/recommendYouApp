import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/services/auth/service.dart';
import 'app/data/services/configs/service.dart';
import 'app_get.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

initServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Shared Preference
  await GetStorage.init();
  await Get.putAsync(() => AppConfigService().init());
  await Get.putAsync(() => AuthService().init());

  // Notification
  var initAndroidSetting = const AndroidInitializationSettings('@mipmap/ic_launcher');
  var initIosSetting = const IOSInitializationSettings();
  var initSetting = InitializationSettings(android: initAndroidSetting, iOS: initIosSetting);
  await FlutterLocalNotificationsPlugin().initialize(initSetting);
}
