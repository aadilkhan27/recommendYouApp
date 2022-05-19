import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;

  final List<Tab> referralTabs = const <Tab>[
    Tab(
      child: Text(
        'Posts',
      ),
    ),
    Tab(
      child: Text(
        'People',
      ),
    ),
  ];


  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: referralTabs.length);
  }
  @override
  void onClose() {
    tabController.dispose();
    super.onClose();

  }
}