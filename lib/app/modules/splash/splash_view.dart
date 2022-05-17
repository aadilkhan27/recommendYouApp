import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {

  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: GetBuilder<SplashController>(builder: (_) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: const Image(
              image: AssetImage(bgSplash),
            ),
          );
        }));
  }
}
