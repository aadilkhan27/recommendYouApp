import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with GetSingleTickerProviderStateMixin{
  final List<Tab> myTabs = const <Tab>[
    Tab(text: 'Posts',height: 60,),
    Tab(text: 'People',height: 60,),
  ];
  late TabController controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }
  @override
  void onClose() {
    controller.dispose();
    super.onClose();

  }
}