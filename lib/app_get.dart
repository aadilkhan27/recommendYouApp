import 'package:recommend_you/app/core/theme/app_theme.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/values/strings.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      title: title,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
