import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';

class LandingController extends GetxController
    with GetSingleTickerProviderStateMixin {

  late TabController tabController;
  String? selectedItemValue="";

  final isSelected1 = false.obs;
  final isSelected2 = false.obs;
  final isSelected3 = false.obs;
  final isSelected4 = false.obs;
  final isSelected5 = false.obs;
  final isSelected6 = false.obs;

  final isSavedSelected1 = false.obs;
  final isSavedSelected2 = false.obs;
  final isSavedSelected3 = false.obs;
  final isSavedSelected4 = false.obs;
  final isSavedSelected5 = false.obs;
  final isSavedSelected6 = false.obs;


 /* final List<Tab> referralTabs = <Tab>[

    Tab(
      child:
      SvgPicture.asset(bottomNotification, color: primaryLightColor, height: 20, width: 20,),    */
  /*SvgPicture.asset(bottomHome, color: primaryLightColor, height: 20, width: 20,),*//*
    ),
    Tab(
        child: SvgPicture.asset(
          bottomNotification,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
          bottomAdd,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
      bottomSearch,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
    Tab(
        child: SvgPicture.asset(
          bottomMenu,
      color: primaryLightColor,
      height: 20,
      width: 20,
    )),
  ];*/

  /*final List<Tab> refferredTab = <Tab>[
    Tab(
      child:  tabController.index == 0?
      SvgPicture.asset(bottomHomeFill,  height: 20, width: 20,):
      SvgPicture.asset(bottomHome,  height: 20, width: 20,),
    ),
    Tab(
      child:  tabController.index == 1?
      SvgPicture.asset(bottomNotificationFill, height: 20, width: 20,):
      SvgPicture.asset(bottomNotification,  height: 20, width: 20,),
    ),
    Tab(
      child:  tabController.index == 2?
      SvgPicture.asset(bottomAddFill,  height: 20, width: 20,):
      SvgPicture.asset(bottomAdd, height: 20, width: 20,),
    ),
    Tab(
      child:  tabController.index == 3?
      SvgPicture.asset(bottomSearchFill,  height: 20, width: 20,):
      SvgPicture.asset(bottomSearch,  height: 20, width: 20,),
    ),
    Tab(
      child:  tabController.index == 4?
      SvgPicture.asset(bottomMenu,  height: 20, width: 20,):
      SvgPicture.asset(bottomMenu,  height: 20, width: 20,),
    )
  ];*/

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 5);

  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

}

