import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/profile/profile_view.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import '../../../core/values/colors.dart';
import '../../imageLarge.dart';
import 'helper/helper_view.dart';
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
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
                            padding: EdgeInsets.only(top: 10, right: 10, bottom: 10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [

                                  InkWell(
                                    child: Row(
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
                                      /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ProfileView()));*/
                                      Get.toNamed(Routes.profileView);
                                    },
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

                                  /*Container(
                        height: 30,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 3.5,
                        margin: EdgeInsets.only(right: 0, left: 0),
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purple, width: 1.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Categories',
                            style:
                            TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          icon: SvgPicture.asset(icDownArrow),
                          iconSize: 30,
                          buttonHeight: 60,
                          buttonPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                          dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: bonJourColor
                          ),
                          items: spinnerItems.map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(item, style: const TextStyle(
                                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold)),
                              ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'RecommendYou';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),
                      ),*/

                                  /*InkWell(
                                    child: Container(
                                      height: 30,
                                      width: MediaQuery.of(context).size.width / 3.5,
                                      margin: EdgeInsets.only(right: 0, left: 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black),
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(20),
                                          )),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Center(
                                              child: Text(
                                                'Categories',
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              )),
                                          Spacer(),
                                          SvgPicture.asset(
                                            icDownArrow,
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      //showPopupMenu(context);
                                    },
                                  ),*/

                                  Container(
                                    height: 25,
                                    padding: EdgeInsets.only(left: 2, right: 2),
                                    width:
                                    MediaQuery.of(context).size.width / 2.5,
                                    margin: EdgeInsets.only(right: 0, left: 0),
                                    child: DropdownButtonFormField2(
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.purple, width: 1.0),
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                      ),
                                      isExpanded: true,
                                      hint: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Recommend',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryDarkColor),
                                            ),
                                            TextSpan(
                                              text: 'You',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: primaryLightColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                      icon: SvgPicture.asset(icDownArrow),
                                      iconSize: 15,
                                      buttonHeight: 60,
                                      iconEnabledColor: Colors.white,
                                      selectedItemHighlightColor:
                                      primaryLightColor,
                                      buttonPadding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      dropdownDecoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: veryLightWhite),
                                      items: spinnerItems
                                          .map((item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ))
                                          .toList(),
                                      validator: (value) {
                                        if (value == null) {
                                          return 'RecommendYou';
                                        }
                                      },
                                      onChanged: (value) {
                                        //Do something when changing the item if you want.
                                      },
                                      onSaved: (value) {
                                        selectedValue = value.toString();
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      thickness: 1,
                                      width: 0,
                                    ),
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
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
                                  SizedBox(
                                    width: 20,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image1)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected1.value) {
                                                        controller.isSelected1.value=false;
                                                      } else {
                                                        controller.isSelected1.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected1.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),
                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected1.value) {
                                                        controller.isSavedSelected1.value=false;
                                                      } else {
                                                        controller.isSavedSelected1.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected1.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image3)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected2.value) {
                                                        controller.isSelected2.value=false;
                                                      } else {
                                                        controller.isSelected2.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected2.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),

                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected2.value) {
                                                        controller.isSavedSelected2.value=false;
                                                      } else {
                                                        controller.isSavedSelected2.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected2.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image2)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected3.value) {
                                                        controller.isSelected3.value=false;
                                                      } else {
                                                        controller.isSelected3.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected3.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),

                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected3.value) {
                                                        controller.isSavedSelected3.value=false;
                                                      } else {
                                                        controller.isSavedSelected3.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected3.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image4)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected4.value) {
                                                        controller.isSelected4.value=false;
                                                      } else {
                                                        controller.isSelected4.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected4.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),
                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected4.value) {
                                                        controller.isSavedSelected4.value=false;
                                                      } else {
                                                        controller.isSavedSelected4.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected4.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image5)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected5.value) {
                                                        controller.isSelected5.value=false;
                                                      } else {
                                                        controller.isSelected5.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected5.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),
                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected5.value) {
                                                        controller.isSavedSelected5.value=false;
                                                      } else {
                                                        controller.isSavedSelected5.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected5.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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
                                                      Text(
                                                        'Ramon Ricardo',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                            FontWeight.bold),
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
                                                                FontWeight
                                                                    .bold),
                                                          )
                                                        ],
                                                      ),
                                                    ]),
                                              ),
                                              Spacer(),
                                              Container(
                                                  child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10, top: 0),
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
                                                                  right: 10, top: 0),
                                                              child: SvgPicture.asset(
                                                                  icMoreHorizontal)),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context: context,
                                                                builder: (context) {
                                                                  return Wrap(
                                                                    children: [
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Don\'t show me this again'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as spam'),
                                                                      ),
                                                                      ListTile(
                                                                        title: Text(
                                                                            'Report as inappropriate content'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                          },
                                                        ),
                                                      ])),
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
                                                            image: AssetImage(
                                                                image6)))),
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
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSelected6.value) {
                                                        controller.isSelected6.value=false;
                                                      } else {
                                                        controller.isSelected6.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child: ((controller.isSelected6.value)? SvgPicture.asset(icHeartClick): SvgPicture.asset(icHeart))),
                                              ),
                                              Spacer(),
                                              Obx(
                                                    ()=> InkWell(
                                                    onTap:(){
                                                      if(controller.isSavedSelected6.value) {
                                                        controller.isSavedSelected6.value=false;
                                                      } else {
                                                        controller.isSavedSelected6.value=true;
                                                      }
                                                      // Get.toNamed(Routes.landing);
                                                    },
                                                    child:
                                                    ((controller.isSavedSelected6.value)?
                                                    SvgPicture.asset(
                                                      icCombinedShapeFill,
                                                    ):
                                                    SvgPicture.asset(
                                                      icCombinedShape,
                                                    ))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
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

