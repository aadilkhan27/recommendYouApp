import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/dataModel/Animal.dart';

import '../../../core/values/colors.dart';
import '../../profile/profile_view.dart';
import 'helper/helper_view.dart';
import 'home_controller.dart';

// commend

//Commit
class HomeView2 extends StatelessWidget  {

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

  List<Animal> animals = [
    Animal(id: 2, name: "Category 1"),
    Animal(id: 3, name: "Category 2"),
    Animal(id: 4, name: "Category 3"),
    Animal(id: 5, name: "Category 4"),
    Animal(id: 6, name: "Category 5"),

  ];

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

  @override
  Widget build(BuildContext context) {

    final _items = animals
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
          //Get.toNamed(Routes.profileView);
          //Navigator.push(context, SlideRightRoute(page: ProfileView()));
        /*  Get.to(
              ProfileView(),
              transition: Transition.leftToRight
          );*/
          Navigator.push(context, SlideRightRoute(page: ProfileView()));
        }

        // Swiping in left direction.
        if (details.delta.dx < 0) {
          print('swipe in left  direction');
          //write code which u want to change page
          //Get.toNamed(Routes.helper);
         /* GetPage(
              name: Routes.helper,
              page: () => HelperView(),
              transition: Transition.rightToLeft
          );*/
          Get.to(
              HelperView(),
              transition: Transition.rightToLeft
          );
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
                          height: 50,
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
                                      width: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showMultiSelect(context, _items);
                                      },
                                      child: Container(

                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black,),
                                            color: Colors.white,
                                            borderRadius: const BorderRadius.all(Radius.circular(15))
                                        ),
                                        margin: const EdgeInsets.only(right: 10, left: 10),
                                        padding : const EdgeInsets.only(right: 10, left: 10, top : 5, bottom: 5),
                                        child: Row(
                                          children: [
                                            RichText(
                                              maxLines: 3,
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: "Recommended",
                                                  style: TextStyle(fontSize: 12, color: Colors.purple, height: 1.4),
                                                ),
                                                TextSpan(
                                                  text: 'You',
                                                  style: TextStyle(
                                                      fontSize: 12, color: primaryLightColor),
                                                )
                                              ]),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SvgPicture.asset(
                                              icDownArrow,
                                              semanticsLabel: 'logo',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),


                                   /* Container(

                                      margin: EdgeInsets.only(top: 0, bottom: 0),
                                      child: Container(
                                        child: MultiSelectDialogField(
                                          items: _items,
                                          searchable: true,
                                          selectedColor: primaryLightColor,
                                          decoration: BoxDecoration(//primaryLightColor.withOpacity(0.1)
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.all(Radius.circular(40)),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 1,
                                            ),
                                          ),
                                          buttonIcon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: Colors.black,
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
                                    ),*/
                                    SizedBox(
                                      width: 5,
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
                                                if (isSelected1.value) {
                                                  isSelected1.value =
                                                      false;
                                                } else {
                                                  isSelected1.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected1.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected1.value) {
                                                 isSavedSelected1
                                                      .value = false;
                                                } else {
                                                  isSavedSelected1
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected1.value)
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
                                                if (isSelected2.value) {
                                                  isSelected2.value =
                                                      false;
                                                } else {
                                                  isSelected2.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected2.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected2.value) {
                                                  isSavedSelected2
                                                      .value = false;
                                                } else {
                                                  isSavedSelected2
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected2.value)
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
                                                if (isSelected3.value) {
                                                  isSelected3.value =
                                                      false;
                                                } else {
                                                 isSelected3.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected3.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected3.value) {
                                                  isSavedSelected3
                                                      .value = false;
                                                } else {
                                                  isSavedSelected3
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected3.value)
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
                                                if (isSelected4.value) {
                                                  isSelected4.value =
                                                      false;
                                                } else {
                                                  isSelected4.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected4.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected4.value) {
                                                  isSavedSelected4
                                                      .value = false;
                                                } else {
                                                  isSavedSelected4
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected4.value)
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
                                                if (isSelected5.value) {
                                                  isSelected5.value =
                                                      false;
                                                } else {
                                                 isSelected5.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected5.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected5.value) {
                                                  isSavedSelected5
                                                      .value = false;
                                                } else {
                                                  isSavedSelected5
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected5.value)
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
                                                if (isSelected6.value) {
                                                  isSelected6.value =
                                                      false;
                                                } else {
                                                  isSelected6.value =
                                                      true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSelected6.value)
                                                  ? SvgPicture.asset(
                                                      icHeartClick)
                                                  : SvgPicture.asset(icHeart))),
                                        ),
                                        Spacer(),
                                        Obx(
                                          () => InkWell(
                                              onTap: () {
                                                if (isSavedSelected6.value) {
                                                  isSavedSelected6
                                                      .value = false;
                                                } else {
                                                 isSavedSelected6
                                                      .value = true;
                                                }
                                                // Get.toNamed(Routes.landing);
                                              },
                                              child: ((isSavedSelected6.value)
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

showMultiSelect(BuildContext context, List<MultiSelectItem<Animal>> _items) {

  showModalBottomSheet(
    isScrollControlled: true, // required for min/max child size
    context: context,
    builder: (ctx) {
      return  MultiSelectBottomSheet(
        selectedColor: primaryLightColor,
        items: _items,
        initialValue: _items,
        onConfirm: (values) {

        },
        maxChildSize: 0.8,
      );
    },
  );
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}
