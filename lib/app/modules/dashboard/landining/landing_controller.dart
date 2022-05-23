import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:multi_select_item/multi_select_item.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';

class LandingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  String? selectedItemValue="";




  final List<Tab> referralTabs = <Tab>[
    Tab(
      child: SvgPicture.asset(
        icHome,
        color: primaryLightColor,
        height: 20,
        width: 20,
      ),
    ),
    Tab(
        child: SvgPicture.asset(
          icHome,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
      icAdd,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
      icSearch,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
      icMoreHorizontal,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
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
