import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';

class ProfileController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;

  final isSelected1 = false.obs;
  final isSelected2 = false.obs;
  final isSelected3 = false.obs;

  final isSavedSelected1 = false.obs;
  final isSavedSelected2 = false.obs;
  final isSavedSelected3 = false.obs;

  final List<Tab> referralTabs = const <Tab>[
    Tab(
      child: Text(
        'My Posts',
      ),
    ),
    Tab(
      child: Text(
        'Saved Posts',
      ),
    ),
    Tab(
      child: Text(
        'Liked Posts',
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
