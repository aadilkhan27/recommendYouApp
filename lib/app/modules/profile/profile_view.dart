import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/profile/profile_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileView extends GetView<ProfileController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: controller.referralTabs.length,
            child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  controller: controller.tabController,
                    indicatorColor: primaryDarkColor,
                    labelColor: primaryDarkColor,
                    unselectedLabelColor: primaryLightColor,
                  tabs:
                    controller.referralTabs
                ),
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Column(
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
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                    icLeftArrow,
                                    semanticsLabel: 'logo',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Ram_Ricard',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                              Spacer(),
                              /*InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 0),
                    child: SvgPicture.asset(icEdit, width: 20,
                      height: 20,
                      color: primaryDarkColor,),
                  ),
                  onTap: () {
                    Get.toNamed(Routes.editProfile);
                  },
                ),*/
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: (MediaQuery.of(context).size.width / 4) - 10,
                              child: InkWell(
                                child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(profileImage4)))),
                                onTap: () {
                                  showAlertDialog(context, profileImage4);
                                },
                              ),
                            ),
                            Container(
                              width: (MediaQuery.of(context).size.width / 4) - 10,
                              child: InkWell(
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        '152',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Likes',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Get.toNamed(Routes.likes);
                                },
                              ),
                            ),
                            /*Container(
                width: (MediaQuery.of(context).size.width / 4) - 10,
                child: Column(
                  children: [
                    Text(
                      '1584',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width / 4) - 10,
                child: Column(
                  children: [
                    Text(
                      '15 M',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    )
                  ],
                ),
              )*/
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                        child: Row(
                          children: [
                            Text(
                              'Ramon ricardo',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(left: 0, right: 10, top: 0),
                                child: SvgPicture.asset(
                                  icEdit,
                                  width: 15,
                                  height: 15,
                                  color: primaryDarkColor,
                                ),
                              ),
                              onTap: () {
                                Get.toNamed(Routes.editProfile);
                              },
                            ),
                            /* SvgPicture.asset(
                icEdit,
                width: 15,
                height: 15,
                color: primaryDarkColor,
              )*/
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Ram_Ricard',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: dummyLoremIpsum2,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black, height: 1.4),
                                ),
                                TextSpan(
                                  text: ' View more',
                                  style: TextStyle(
                                      fontSize: 16, color: primaryDarkColor),
                                )
                              ]),
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 170,
                              padding: EdgeInsets.only(left: 2, right: 2),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple, width: 1.0),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
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
                                const EdgeInsets.only(left: 10, right: 10),
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: veryLightWhite),
                                items: spinnerItems
                                    .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.black),
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
                            /* Spacer(),
              SvgPicture.asset(icA),
              SizedBox(
                width: 25,
              ),
              SvgPicture.asset(icB),
              SizedBox(
                width: 25,
              )*/
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ), // This is where you build the profile part
                ),
              ),
            ];
          }, body: TabBarView(
            controller: controller.tabController,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage1)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image1))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '420',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 100,
                                      margin: EdgeInsets.only(
                                          left: 0,
                                          right: 0,
                                          top: 0,
                                          bottom: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '254 views',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          /*SvgPicture.asset(
                                            icDownArrow,
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage2)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image2))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '420',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 100,
                                      margin: EdgeInsets.only(
                                          left: 0,
                                          right: 0,
                                          top: 0,
                                          bottom: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '254 views',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          /*SvgPicture.asset(
                                            icDownArrow,
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage3)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image3))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '420',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 100,
                                      margin: EdgeInsets.only(
                                          left: 0,
                                          right: 0,
                                          top: 0,
                                          bottom: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '254 views',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                         /* SvgPicture.asset(
                                            icDownArrow,
                                          ),*/
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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

                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage4)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image5))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShapeFill
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage5)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image1))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShapeFill
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage2)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image2))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeart,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShapeFill,
                                    ),
                                  ],
                                ),
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
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage2)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image2))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeartClick,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShape,
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage5)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image4))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeartClick,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShape,
                                    ),
                                  ],
                                ),
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
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 10),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width:
                                MediaQuery.of(context).size.width,
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    profileImage6)))),
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                                showPopupMenu(context);
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
                                    left: 10,
                                    right: 10,
                                    top: 5,
                                    bottom: 10),
                                child: Text(
                                  dummyLoremIpsum2,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      height: 1.4),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10),
                                  child:
                                  Image(image: AssetImage(image6))),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 10,
                                    bottom: 0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      icHeartClick,
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      icCombinedShape,
                                    ),
                                  ],
                                ),
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
                  ],
                ),
              ),
            ],
          ),

          ),
              /*controller: controller.tabController,
              tabs: controller.referralTabs,
              labelColor: primaryDarkColor,
              unselectedLabelColor: primaryLightColor,
              indicatorColor: primaryDarkColor*/),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, String image) {
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
}

showPopupMenu(BuildContext buildContext) {

  showModalBottomSheet(
      context: buildContext,
      builder: (context) {
        return Wrap(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                showDeletPostAlertDialog(context);
              },
              child: ListTile(
                title: Text('Delete'),

              ),
            ),

          ],
        );
      });
}

showDeletPostAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
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
          'Cancel',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepTwo);
    },
  );

  Widget confirmButton = TextButton(
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
          'Delete',
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
      "Delete Post?",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      "Are you sure you want to delete the post?",
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
