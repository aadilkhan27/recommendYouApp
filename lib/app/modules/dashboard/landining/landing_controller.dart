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

  List multiSelectList = [];

  MultiSelectController controller = new MultiSelectController();


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
    multiSelectList.add({"images": 'assets/images/resort_1.jpg', "desc":"Welcome to New York City!"});
    multiSelectList.add({"images":'assets/images/resort_2.jpg' ,"desc":"Welcome to Los Angeles!"});
    multiSelectList.add({"images":'assets/images/resort_3.jpg' ,"desc":"Welcome to Chicago!"});
    multiSelectList.add({"images":'assets/images/resort_4.jpg', "desc":"Welcome to Houston!"});
    multiSelectList.add({"images":'assets/images/sanfrancisco.jpg', "desc":"Welcome to San francisco!"});

    controller.disableEditingWhenNoneSelected = true;
    controller.set(multiSelectList.length);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void add() {
    multiSelectList.add({"images": multiSelectList.length});
    multiSelectList.add({"desc": multiSelectList.length});


      controller.set(multiSelectList.length);
  }

  void delete() {
    var list = controller.selectedIndexes;
    list.sort((b, a) =>
        a.compareTo(b));
    list.forEach((element) {
      multiSelectList.removeAt(element);
    });

      controller.set(multiSelectList.length);
  }

  void selectAll() {

      controller.toggleAll();
  }
}
