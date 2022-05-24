import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/helper_view.dart';
import 'package:recommend_you/app/modules/dashboard/landining/landing_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/deletaccount/delete_account_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/privacypolicy/privacy_policy_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/terms_condition_view.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import '../../login/signin/sign_in_view.dart';
import '../more/faq/faq_view.dart';

class LandingView extends GetView<LandingController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
  ];

  String? selectedValue;

  List<String> images = [
    profileImage1,
    profileImage2,
    profileImage3,
    profileImage4,
    profileImage5,
    profileImage1,
    profileImage2,
    profileImage3,
    profileImage4,
    profileImage5,
    profileImage1,
    profileImage2,
    profileImage3,
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MaterialApp(
        home: SafeArea(
          child: DefaultTabController(
            length: 5, //controller.referralTabs.length,
            child: Scaffold(
              bottomNavigationBar: TabBar(
                  controller: controller.tabController,
                  //tabs: controller.referralTabs,
                  tabs: [
                    Tab(
                      child: controller.tabController.index == 0
                          ? SvgPicture.asset(
                              bottomHomeFill,
                              height: 20,
                              width: 20,
                            )
                          : SvgPicture.asset(
                              bottomHome,
                              height: 20,
                              width: 20,
                            ),
                    ),
                    Tab(
                      child: controller.tabController.index == 1
                          ? SvgPicture.asset(
                              bottomNotificationFill,
                              height: 20,
                              width: 20,
                            )
                          : SvgPicture.asset(
                              bottomNotification,
                              height: 20,
                              width: 20,
                            ),
                    ),
                    Tab(
                      child: controller.tabController.index == 2
                          ? SvgPicture.asset(
                              bottomAddFill,
                              height: 20,
                              width: 20,
                            )
                          : SvgPicture.asset(
                              bottomAdd,
                              height: 20,
                              width: 20,
                            ),
                    ),
                    Tab(
                      child: controller.tabController.index == 3
                          ? SvgPicture.asset(
                              bottomSearchFill,
                              height: 20,
                              width: 20,
                            )
                          : SvgPicture.asset(
                              bottomSearch,
                              height: 20,
                              width: 20,
                            ),
                    ),
                    Tab(
                      child: controller.tabController.index == 4
                          ? SvgPicture.asset(
                              bottomMenu,
                              height: 20,
                              width: 20,
                            )
                          : SvgPicture.asset(
                              bottomMenu,
                              height: 20,
                              width: 20,
                            ),
                    )
                  ],
                  //labelColor: primaryDarkColor,
                  //unselectedLabelColor: primaryLightColor,
                  indicatorColor: Colors.white),
              body: TabBarView(
                controller: controller.tabController,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  /*SvgPicture.asset(
                        icA,
                        semanticsLabel: 'logo',
                      ),*/

                                  InkWell(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        SvgPicture.asset(icUser),
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
                                  /*SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        icB,
                        semanticsLabel: 'logo',
                      ),*/
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
                                      iconSize: 30,
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
                                      height: 100,
                                    )
                                  ],
                                ),
                              )),

                        ],
                      ),
                    ),
                  ),



                  SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  /* InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: SvgPicture.asset(
                              icLeftArrow,
                              semanticsLabel: 'logo',
                            ),
                          ),*/
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Notification',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 1,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Expanded(
                                child: ListView.builder(
                                  itemBuilder: (BuildContext, index) {
                                    return Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                                right: 10,
                                                left: 10),
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    showAlertDialogForProfile(
                                                        context, images[index]);
                                                  },
                                                  child: Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration:
                                                        new BoxDecoration(
                                                      shape: BoxShape.rectangle,
                                                      image:
                                                          new DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            images[index]),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    //crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        //margin: EdgeInsets.only(left: 35, right: 35),
                                                        child: Center(
                                                          child: RichText(
                                                            textAlign: TextAlign
                                                                .center,
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'New Likes ',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                  TextSpan(
                                                                      text:
                                                                          'for your message.',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              14)),
                                                                ]),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: images.length,
                                  padding: EdgeInsets.only(
                                    right: 20,
                                    left: 20,
                                  ),
                                  scrollDirection: Axis.vertical,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Stack(children: [
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      //Get.back();
                                    },
                                  ),
                                  Spacer(),
                                  InkWell(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "Post",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onTap: () {
                                      showAlertDialog(context);
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Container(
                                            width: 60.0,
                                            height: 60.0,
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(profileImage),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Text(
                                            'Roman Ricardo',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              //padding: EdgeInsets.only(left: 2, right: 2),
                              // margin: EdgeInsets.only(right: 15, left: 15),
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  enabledBorder: const OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.0),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    // width: 0.0 produces a thin "hairline" border
                                    borderSide: const BorderSide(
                                        color: Colors.white, width: 0.0),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 0.0),
                                    borderRadius: BorderRadius.circular(0),
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
                                iconSize: 30,
                                buttonHeight: 60,
                                iconEnabledColor: Colors.white,
                                selectedItemHighlightColor: primaryLightColor,
                                buttonPadding:
                                    const EdgeInsets.only(left: 15, right: 20),
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: veryLightWhite),
                                items: spinnerItems
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                                fontSize: 14,
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
                              height: 10,
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                right: 12,
                                left: 12,
                              ),
                              height: 6 * 24,
                              child: TextField(
                                cursorColor: Colors.black,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    height: 1.4),
                                maxLines: 15,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintText: "Write a message here.....",
                                  hintStyle: TextStyle(color: Colors.black),
                                  filled: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0, left: 0, right: 0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          color: veryLightGreyTwoColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.camera_alt_rounded),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Add an image or video',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              color: Colors.purple,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              )),
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 10, top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 10, bottom: 2, top: 2),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusColor: Colors.white,
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Search',
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemBuilder: (BuildContext, index) {
                              return Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          InkWell(
                                            child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: new BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: new DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                            images[index])))),
                                            onTap: () {
                                              showAlertDialogImage(
                                                  context, images[index]);
                                            },
                                          ),
                                          SizedBox(
                                            width: 20,
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
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  'Ramon_Ricardo',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: images.length,
                            padding: EdgeInsets.all(5),
                            scrollDirection: Axis.vertical,
                          ),
                        )
                      ])),
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  /* SvgPicture.asset(
                        icLeftArrow,
                        semanticsLabel: 'logo',
                      ),*/
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Setting",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  ),
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
                                  child: Column(children: [
                            /*Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text('Privacy'),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Privacy Settings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text('Approve all follow requests'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: true,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                  ListTile(
                                    title: Text('Show me in search result'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: false,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                        'Show my bio also to non-followers'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: false,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                ],
                              );
                            });
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.notifications_active_outlined),
                    title: Text('Notifications'),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                ListTile(
                                  title: Text(
                                    'Receive notifications for :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ListTile(
                                  title: Text('Post shared with me personally'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title:
                                      Text('Only posts in chosen categories'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: false,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                      'Post shared with me in helpers section'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text('message responses to posts'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                      'message responses in helper section'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: false,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting Preference'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => PreferenceView()));
                    },
                  ),
                ),
                */

                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                  leading: Image(
                                    image: AssetImage(changeLanguage),
                                    width: 20,
                                    height: 20,
                                  ),
                                  title: Text('Language Change'),
                                  onTap: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangeLangugaeView()));
                                    /* showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Wrap(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                'English',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                Fluttertoast.showToast(
                                                  msg: "Language Changed to English",
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text(
                                                'French',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                Fluttertoast.showToast(
                                                  msg: "Language Changed to French",
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );*/

                                    showLanguageAlertDialog(context);
                                  }),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(contactUS),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Change contact details'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              ChangeContactView()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(changePassword),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Change Password'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              ChangePasswordView()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(deleteAcc),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Delete Account'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              DeleteAccountView()));
                                },
                                //TODO
                                /*showModalBottomSheet<dynamic>(
                      isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return SafeArea(
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35.0,left: 35,right: 35),
                                    child: Text(
                                      'We are sorry you want to leave. Can you tell us why? We would like to learn from any mistakes we may have made.',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('The content is not interesting'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('There are too much spam'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('I don\'t trust this platform'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('Other'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Align(
                                      child: Text(
                                        'Please give us additional explanation',
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.start,
                                      ),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 5*24,
                                    child: TextField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        hintText: "Enter a message",
                                        fillColor: Colors.grey[300],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          border: Border.all(color: Colors.purple),
                                          borderRadius:
                                          const BorderRadius.all(Radius.circular(5))),
                                      alignment: Alignment.center,
                                      child:  Text(
                                        'SUBMIT',
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },*/
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(termsConditions),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Terms and Conditions'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              TermsConditionView()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(privacy),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Privacy Policy'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              PrivacyPolicyView()));
                                },
                              ),
                            ),
                            /*Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('FAQ'),
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangePasswordView()));
                      Get.toNamed(Routes.faq);
                    },
                  ),
                ),*/
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(contactUS),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Contact Us'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) =>
                                              ContactUsView()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(faqIcon),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('FAQ'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (builder) => FaqView()));
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage(logout),
                                  width: 20,
                                  height: 20,
                                ),
                                title: Text('Log Out'),
                                onTap: () {
                                  showLogOutAlertDialog(context);
                                  // Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                                },
                              ),
                            ),
                          ])))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget continueButton = TextButton(
    child: Container(
      height: 40,
      width: 60,
      decoration: BoxDecoration(
          color: primaryDarkColor,
          border: Border.all(color: primaryDarkColor),
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      alignment: Alignment.center,
      child: const Text(
        'OK',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    onPressed: () {
      /*Navigator.of(context).pop();
        Get.toNamed(Routes.dashboard);*/
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Successfully Post",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      dummyLoremIpsum,
      style: TextStyle(color: Colors.black, fontSize: 12, height: 1.5),
    ),
    actions: [
      //continueButton,
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

showAlertDialogForProfile(BuildContext context, String profileImage) {
  // set up the AlertDialog
  Dialog alert = Dialog(
    child: Container(
      height: 320,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(profileImage),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                'Ramon Ricardo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Ramon_Ricardo',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                dummyLoremIpsum,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                    color: primaryDarkColor,
                    border: Border.all(color: primaryDarkColor),
                    borderRadius: const BorderRadius.all(Radius.circular(7))),
                alignment: Alignment.center,
                child: const Text(
                  'VIEW PROFILE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Get.toNamed(Routes.profileView);
              },
            ),
          )
        ],
      ),
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
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

showLogOutAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepTwo);
    },
  );

  Widget confirmButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'Yes',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (builder) => SignInView()));

      //Get.toNamed(Routes.signInView);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Log Out?",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      "Do you really want to logout from app",
      style: TextStyle(color: Colors.black, fontSize: 13, height: 1.5),
    ),
    actions: [
      Container(
        child: Row(
          children: [
            Spacer(),
            cancelButton,
            confirmButton,
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

showLanguageAlertDialog(BuildContext context) {
  // set up the buttons
  Widget englishButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'English',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Fluttertoast.showToast(
        msg: "Language Changed to English",
      );
    },
  );

  Widget frenchButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'French',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Fluttertoast.showToast(
        msg: "Language Changed to French",
      );

      //Get.toNamed(Routes.signInView);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Choose your language",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: [
      Center(
        child: Column(
          children: [
            englishButton,
            SizedBox(
              height: 10,
            ),
            frenchButton,
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
/* Fluttertoast.showToast(
                                                  msg: "Language Changed to French",
                                                );*/
