import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/profile/profile_controller.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class ProfileView extends GetView<ProfileController> {
  final List<String> spinnerItems = [
    'RecommendYou',
    'RecommendYous',
    'RecommenYou',
    'RecommndYou',
    'RecmmendYou',
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
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 40,
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
                        InkWell(
                          child: SvgPicture.asset(
                            icLeftArrow,
                          ),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Ram_Ricard',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        Spacer(),
                        InkWell(
                          child: SvgPicture.asset(icMenuOption),
                          onTap: () {
                            /*showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return Wrap(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                              ),
                                              SvgPicture.asset(
                                                savedpost,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'My Profile',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  savedpost,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Saved Post',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  followers,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Followers',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  following,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Following',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  inviteafriend,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Invite a friend',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  settings,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Settings',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  faq,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Frequently asked questions',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  termscondition,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Terms and condition',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  privacypolicy,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Privacy Policy',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  contact,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'Contact us',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                      InkWell(
                                          onTap: () {
                                            //Get.offNamed(Routes.dashboard);
                                          },
                                          child: ListTile(
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  logout,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  'LogOut',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ],
                                  );
                                });*/
                          },
                        ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width / 4) - 10,
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
                      Container(
                        width: (MediaQuery.of(context).size.width / 4) - 10,
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
                      Container(
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
                      )
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
                      SvgPicture.asset(
                        icEdit,
                        width: 15,
                        height: 15,
                        color: primaryDarkColor,
                      )
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
                    margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: dummyLoremIpsum,
                            style: TextStyle(fontSize: 12, color: Colors.black, height: 1.4),
                          ),
                          TextSpan(
                            text: ' View more',
                            style: TextStyle(
                                fontSize: 14, color: primaryDarkColor),
                          )
                        ]),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: (MediaQuery.of(context).size.width / 2) +
                            (MediaQuery.of(context).size.width / 4) -
                            15,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'RecommendYou',
                            style: TextStyle(
                                fontSize: 12,
                                color: primaryDarkColor,
                                fontWeight: FontWeight.bold),
                          ),
                          icon: SvgPicture.asset(icDownArrow),
                          iconSize: 30,
                          buttonHeight: 60,
                          buttonPadding:
                              const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          items: spinnerItems
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color: primaryDarkColor),
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
                      Spacer(),
                      SvgPicture.asset(icA),
                      SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset(icB),
                      SizedBox(
                        width: 25,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: TabBar(
                      controller: controller.tabController,
                      tabs: controller.referralTabs,
                      labelColor: primaryDarkColor,
                      unselectedLabelColor: primaryLightColor,
                      indicatorColor: primaryDarkColor),
                ),
                Expanded(
                  child: TabBarView(
                    controller: controller.tabController,
                    children: [
                      SingleChildScrollView(
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                          ],
                        ),
                      ),
                      SingleChildScrollView(
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                          ],
                        ),
                      ),
                      SingleChildScrollView(
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children : [
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
                                                        fontWeight: FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                            ]
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10, top: 0),
                                                  child: Text(
                                                    '08-09-2021',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(

                                                  child: Container(
                                                      margin: EdgeInsets.only(right: 10, top: 0),
                                                      child: SvgPicture.asset(icMoreHorizontal)),
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
                                                                title: Text('Report as spam'),
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
                                              ]
                                          )
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                                  child: Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12, fontWeight: FontWeight.normal, height: 1.4),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
