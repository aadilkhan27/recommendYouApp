import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreController extends GetxController with GetSingleTickerProviderStateMixin{
  @override
  void onInit() {
    Get.bottomSheet(
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(title: Text("Option 1"),
                trailing: Icon(Icons.access_alarms),),
              ListTile(title: Text("Option 2"),
                trailing: Icon(Icons.ac_unit),),
              ListTile(title: Text("Option 3"),
                trailing: Icon(Icons.present_to_all_sharp),),
              ListTile(title: Text("Option 4"),
                trailing: Icon(Icons.keyboard),),
            ],
          ),
        ),
      ),
        elevation: 20.0,
        enableDrag: false,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
        )
    );
    super.onInit();
  }
}