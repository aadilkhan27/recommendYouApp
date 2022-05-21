import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
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
      child: MaterialApp(

        home: SafeArea(
          child: DefaultTabController(
            length: controller.referralTabs.length,
            child: Scaffold(
              bottomNavigationBar: TabBar(
                  controller: controller.tabController,
                  tabs: controller.referralTabs,
                  labelColor: primaryDarkColor,
                  unselectedLabelColor: primaryLightColor,
                  indicatorColor: primaryDarkColor),
              body: TabBarView(
                controller: controller.tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  icA,
                                  semanticsLabel: 'logo',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  icB,
                                  semanticsLabel: 'logo',
                                ),
                                SizedBox(
                                  height: 20,
                                  child: VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                    width: 10,
                                  ),
                                ),
                                Container(
                                  height: 30,
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
                                            BorderRadius.circular(5.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    isExpanded: true,
                                    hint: const Text(
                                      'RecommendYou',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.purple),
                                    ),
                                    icon: SvgPicture.asset(icDownArrow),
                                    iconSize: 30,
                                    buttonHeight: 60,
                                    buttonPadding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: bonJourColor),
                                    items: spinnerItems
                                        .map((item) => DropdownMenuItem<String>(
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
                                    width: 10,
                                  ),
                                ),
                                InkWell(
                                  child: Image(
                                    image: AssetImage(icChatDuplicate),
                                    width: 20,
                                    height: 30,
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                HelperView()));
                                  },
                                ),
                                InkWell(
                                  child: SvgPicture.asset(icUser),
                                  onTap: () {
                                    /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ProfileView()));*/
                                    Get.toNamed(Routes.profileView);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Column(
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user1)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                      left: 20, right: 20, top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user2)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
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
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(1),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: new BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image:
                                                          new DecorationImage(
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  user3)))),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Ramon Ricardo',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          SizedBox(
                                                            width: 120,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5),
                                                      child: Row(
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
                                                    )
                                                  ],
                                                ),
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
                                            dummyLoremIpsum,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                height: 1.4),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailScreen()));
                                          },
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Image(
                                                  image: AssetImage(image1))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user3)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                      left: 20, right: 20, top: 5, bottom: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        dummyLoremIpsum,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
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
                                            margin: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Image(
                                                image: AssetImage(image2))),
                                      ),
                                      //Image(image: AssetImage(image2))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user4)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                      left: 20, right: 20, top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user1)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
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
                                      left: 20, right: 20, top: 5, bottom: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        dummyLoremIpsum,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            height: 1.4),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Image(image: AssetImage(image2))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(user2)))),
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
                                                  SvgPicture.asset(icTagArrow),
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
                                      Container(
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
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
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(1),
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, bottom: 10),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: new BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      image:
                                                          new DecorationImage(
                                                              fit: BoxFit.fill,
                                                              image: AssetImage(
                                                                  user3)))),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Ramon Ricardo',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          SizedBox(
                                                            width: 120,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          top: 5),
                                                      child: Row(
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
                                                    )
                                                  ],
                                                ),
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
                                            dummyLoremIpsum,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                height: 1.4),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Image(
                                                image: AssetImage(image1))),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(icHeart),
                                      /*SizedBox(
                                    width: 20,
                                  ),
                                  SvgPicture.asset(icComment),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(icShare),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    'Share:',
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  leading: Icon(Icons.share),
                                                ),
                                                Divider(
                                                  height: 1,
                                                  color: Colors.grey,
                                                ),
                                                ListTile(
                                                  title: Text('Publically'),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      'With one or more followers'),
                                                ),
                                                ListTile(
                                                  title: Text('Using other apps'),
                                                ),
                                                ListTile(
                                                  title: Text('With a helper'),
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                  ),*/
                                      Spacer(),
                                      SvgPicture.asset(icCombinedShape),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 1,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
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
                                SizedBox(
                                  width: 10,
                                ),
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
                                Text('Notification')
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left : 10.0, right: 10),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'New',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      decoration: new BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: new DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image:
                                                          AssetImage(profileImage),
                                                        ),
                                                      ),
                                                    ),
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
                                                          'Viana Branding',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'Liked your post',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Branding',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'Started  to following you',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            '',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                FontWeight.normal),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),

                                                        ],
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Today',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Thomas',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your post',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  /* Container(
                                                child: Image(
                                                  image: AssetImage(image1),
                                                  width: 50,
                                                  height: 50,
                                                ),
                                              )*/
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Peter Games',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your video',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
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
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Yesterday',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Thomas',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your post',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  /*Container(
                                                child: Image(
                                                  image: AssetImage(image1),
                                                  width: 50,
                                                  height: 50,
                                                ),
                                              )*/
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Peter Games',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your video',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
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
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'This week',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialogForProfile(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Thomas',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your post',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  /*Container(
                                                child: Image(
                                                  image: AssetImage(image1),
                                                  width: 50,
                                                  height: 50,
                                                ),
                                              )*/
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width:
                                              MediaQuery.of(context).size.width,
                                              child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap:(){
                                                      showAlertDialog(context);
                                                    },
                                                    child: Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration: new BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            image: new DecorationImage(
                                                                fit: BoxFit.fill,
                                                                image: AssetImage(
                                                                    profileImage)))),
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
                                                          'Peter Games',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                              FontWeight.bold),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.only(top: 5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                'liked your video',
                                                                style: TextStyle(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                '6h',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                    fontSize: 12,
                                                                    color:
                                                                    Colors.grey),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
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
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    child: Text('Cancel'),
                                    onTap: () {
                                      //Get.back();
                                    },
                                  ),
                                  Spacer(),
                                  InkWell(
                                    child: Text(
                                      "Post",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
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
                                              fontSize: 14,
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

                              //margin: EdgeInsets.only(right: 15, left: 5),
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
                                hint: const Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                iconSize: 30,
                                buttonHeight: 60,
                                buttonPadding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: bonJourColor),
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
                    child: Column(
                      children: [
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
                                left: 10.0, right: 0, bottom: 2, top: 2),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple),
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
                          child: SingleChildScrollView(
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
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(profileImage)))),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height : 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
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
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
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
                                Text('Settings')
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Column(
                            children: [
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
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Wrap(children: [
                                            Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'English ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'French ',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]);
                                        },
                                      );
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
                                            builder: (builder) => ChangeContactView()));
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
                                            builder: (builder) => ChangePasswordView()));
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
                                            builder: (builder) => DeleteAccountView()));
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
                                            builder: (builder) => TermsConditionView()));
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
                                            builder: (builder) => PrivacyPolicyView()));
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
                                            builder: (builder) => ContactUsView()));
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
                                    // Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                                  },
                                ),
                              ),
                            ],
                        )
                      ],
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

showAlertDialogForProfile(BuildContext context) {
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
            width: 40.0,
            height: 40.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(profileImage),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Text(
                'Ramon Ricardo',
                style: TextStyle(color: Colors.black, fontSize: 14,),
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
              Text(dummyLoremIpsum,style: TextStyle(fontSize: 12,color: Colors.black),),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            height: 20,
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

