import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/splash/splash_controller.dart';

class DetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image(image: AssetImage(image1),
              width: MediaQuery.of(context).size.width,
              height: 150,),
          ),),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

