import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/dataModel/Animal.dart';

import '../../../core/values/colors.dart';
import 'home_controller.dart';

// commend

//Commit
class HomeView extends GetView<HomeController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
  ];
  String? selectedValue;
  List<String> images = [
    "Anil",
    "Sunil",
    "Mukesh",
    "Ramesh",
    "Gaurav",
    "Punit",
    "Punits",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
  ];

  @override
  Widget build(BuildContext context) {
    final _items = controller.animals
        .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
        .toList();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      onPanUpdate: (details) {
        // Swiping in right direction.
        if (details.delta.dx > 0) {
          print('swipe in right direction');
          //write code which u want to change page
          Get.toNamed(Routes.profileView);
        }

        // Swiping in left direction.
        if (details.delta.dx < 0) {
          print('swipe in left  direction');
          //write code which u want to change page
          Get.toNamed(Routes.helper);
        }
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          padding:
                              EdgeInsets.only(top: 10, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      /*SvgPicture.asset(icUser),*/

                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      profileImage2))))
                                    ],
                                  ),
                                  onTap: () {
                                    Get.toNamed(Routes.profileView);
                                  },
                                ),
                                flex: 1,
                              ),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: VerticalDivider(
                                        color: Colors.black,
                                        thickness: 1,
                                        width: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 2, right: 2),

                                      margin:
                                          EdgeInsets.only(right: 0, left: 0),
                                      child: Container(
                                        child: MultiSelectDialogField(
                                          items: _items,
                                          searchable: true,
                                          selectedColor: primaryLightColor,
                                          decoration: BoxDecoration(
                                            color: primaryLightColor.withOpacity(0.1),
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(40)),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                          ),
                                          buttonIcon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.grey,
                                          ),
                                          buttonText: Text(
                                            "RecommendYou",
                                            style: TextStyle(
                                              color: primaryDarkColor,
                                              fontSize: 12,
                                            ),
                                          ),
                                          onConfirm: (results) {
                                            //_selectedAnimals = results;
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    SizedBox(
                                      height: 20,
                                      child: VerticalDivider(
                                        color: Colors.black,
                                        thickness: 1,
                                        width: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 2,
                              ),
                              Flexible(
                                child: InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(chatHome),
                                        width: 30,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Get.toNamed(Routes.helper);
                                  },
                                ),
                                flex: 1,
                              ),

                              /*InkWell(child: SvgPicture.asset(icUser), onTap: () {
                        */ /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ProfileView()));*/ /*
                        Get.toNamed(Routes.profileView);
                      },)*/
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Expanded(
                            child: SingleChildScrollView(
                          child: Column(
                            children: [

                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage1)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage1);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image1)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected1.value) {
                                                  controller.isSelected1.value =
                                                      false;
                                                } else {
                                                  controller.isSelected1.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected1.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected1.value) {
                                                  controller.isSavedSelected1
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected1
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected1.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage2)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage2);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image3)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected2.value) {
                                                  controller.isSelected2.value =
                                                      false;
                                                } else {
                                                  controller.isSelected2.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected2.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected2.value) {
                                                  controller.isSavedSelected2
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected2
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected2.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage4)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage4);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image2)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected3.value) {
                                                  controller.isSelected3.value =
                                                      false;
                                                } else {
                                                  controller.isSelected3.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected3.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected3.value) {
                                                  controller.isSavedSelected3
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected3
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected3.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage5)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage5);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image4)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected4.value) {
                                                  controller.isSelected4.value =
                                                      false;
                                                } else {
                                                  controller.isSelected4.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected4.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected4.value) {
                                                  controller.isSavedSelected4
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected4
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected4.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage6)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage6);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image5)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected5.value) {
                                                  controller.isSelected5.value =
                                                      false;
                                                } else {
                                                  controller.isSelected5.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected5.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected5.value) {
                                                  controller.isSavedSelected5
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected5
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected5.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        InkWell(
                                          child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: AssetImage(
                                                          profileImage6)))),
                                          onTap: () {
                                            showAlertDialogImage(
                                                context, profileImage6);
                                          },
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  child: Text(
                                                    'Ramon Ricardo',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.userProfile);
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                        icTagArrow),
                                                    Text(
                                                      'Category Text Public',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ]),
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, top: 10),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 10, top: 10),
                                                      child: SvgPicture.asset(
                                                          icMoreHorizontal)),
                                                  onTap: () {
                                                    showOptionMenu(context);
                                                  },
                                                ),
                                              ]),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 5,
                                        bottom: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          dummyLoremIpsum2,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              height: 1.4),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              height: 250,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image:
                                                          AssetImage(image6)))),
                                        ),
                                        //Image(image: AssetImage(image2))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 20),
                                    child: Row(
                                      children: [
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSelected6.value) {
                                                  controller.isSelected6.value =
                                                      false;
                                                } else {
                                                  controller.isSelected6.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSelected6.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (controller
                                                    .isSavedSelected6.value) {
                                                  controller.isSavedSelected6
                                                      .value = false;
                                                } else {
                                                  controller.isSavedSelected6
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((controller
                                                      .isSavedSelected6.value)
                                                  ? SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    )
                                                  : SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 80,
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showDialogMultiSelection(List<MultiSelectItem<Animal>> _items) {
  MultiSelectDialogField(
    items: _items,
    title: Text("Animals"),
    selectedColor: Colors.blue,
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.1),
      borderRadius: BorderRadius.all(Radius.circular(40)),
      border: Border.all(
        color: Colors.blue,
        width: 2,
      ),
    ),
    buttonIcon: Icon(
      Icons.pets,
      color: Colors.blue,
    ),
    buttonText: Text(
      "Favorite Animals",
      style: TextStyle(
        color: Colors.blue[800],
        fontSize: 16,
      ),
    ),
    onConfirm: (results) {
      //_selectedAnimals = results;
    },
  );
}

showAlertDialogImage(BuildContext context, String image) {
//image: Image(image: AssetImage(user1),
  Dialog alert = Dialog(
    child: Stack(children: [
      Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(image), fit: BoxFit.cover)),
      ),
      Positioned(
        top: 15, right: 15, //give the values according to your requirement
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.close, color: Colors.black),
        ),
      ),
    ]),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showOptionMenu(BuildContext buildContext) {
  showModalBottomSheet(
      context: buildContext,
      builder: (context) {
        return Wrap(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: ListTile(
                title: Text('Don\'t show me this again'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                showReportPostAlertDialog(buildContext, 'user');
              },
              child: ListTile(
                title: Text('Report as spam'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                showReportPostAlertDialog(buildContext, 'content');
              },
              child: ListTile(
                title: Text('Report as inappropriate content'),
              ),
            ),
          ],
        );
      });
}

showReportPostAlertDialog(BuildContext context, String report) {
  // set up the buttons
  Widget reportButton = TextButton(
    child: Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
          color: primaryDarkColor,
          border: Border.all(color: primaryDarkColor),
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Text(
          'REPORT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepTwo);
    },
  );

  Widget dontReportButton = TextButton(
    child: Container(
      height: 40,
      width: 120,
      decoration: BoxDecoration(
          color: primaryDarkColor,
          border: Border.all(color: primaryDarkColor),
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Text(
          'DON\'T REPORT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepTwo);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Report $report?",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      "Please explain what you would like to report",
      style: TextStyle(color: Colors.black, fontSize: 13, height: 1.5),
    ),
    actions: [
      Container(
        child: Row(
          children: [
            Spacer(),
            reportButton,
            dontReportButton,
          ],
        ),
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
