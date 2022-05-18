import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/profile/profile_view.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
    'Categories 5',
    'Categories 6',
    'Categories 7',
    'Categories 8',
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
                          width: 20,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.only(right: 15, left: 15),
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.purple, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'RecommendYou',
                            style:
                            TextStyle(fontSize: 14, color: Colors.purple),
                          ),
                          icon: SvgPicture.asset(icDownArrow),
                          iconSize: 30,
                          buttonHeight: 60,
                          buttonPadding:
                          const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          items: spinnerItems
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.purple),
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
                          width: 20,
                        ),
                      ),
                      Image(
                        image: AssetImage(icChatDuplicate),
                        width: 20,
                        height: 30,
                      ),
                      InkWell(child: SvgPicture.asset(icUser),onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => ProfileView()));

                      },)
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Text(
                                                '08-09-2021',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:  EdgeInsets.only(top: 5),
                                          child: Row(
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
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20,top: 5, bottom: 10),
                              child: Text(
                                dummyLoremIpsum,
                                style: TextStyle(color: Colors.black,
                                    fontSize: 12, fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                'Alex David Shared',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '6 min',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
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
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                                                      image: AssetImage(user3)))),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
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
                                                            FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 120,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 5),
                                                  child: Row(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10, right: 10,top: 5, bottom: 10),
                                      child: Text(
                                        dummyLoremIpsum,
                                        style: TextStyle(color: Colors.black,
                                            fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 10,right: 10),child: Image(image: AssetImage(image1))),

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
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                    FontWeight.normal),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Text(
                                                '08-09-2021',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top : 5),
                                          child: Row(
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
                                        )
                                      ],
                                    ),
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
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
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
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Text(
                                                '08-09-2021',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin:  EdgeInsets.only(top: 5),
                                          child: Row(
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
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20,top: 5, bottom: 10),
                              child: Text(
                                dummyLoremIpsum,
                                style: TextStyle(color: Colors.black,
                                    fontSize: 14, fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                                    FontWeight.normal),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Text(
                                                '08-09-2021',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top : 5),
                                          child: Row(
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
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20,top: 5, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
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
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Text(
                                                'Alex David Shared',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              SizedBox(
                                                width: 60,
                                              ),
                                              SvgPicture.asset(icMoreHorizontal)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '6 min',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
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
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                                                      image: AssetImage(user3)))),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
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
                                                            FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        width: 120,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(top: 5),
                                                  child: Row(
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
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 10, right: 10,top: 5, bottom: 10),
                                      child: Text(
                                        dummyLoremIpsum,
                                        style: TextStyle(
                                            fontSize: 12, fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Container(
                                    margin: EdgeInsets.only(left: 10,right: 10),child: Image(image: AssetImage(image1))),
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
                                  InkWell(
                                    child: SvgPicture.asset(icHeart),
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  title: Text('Save this post'),
                                                ),
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
                                  SizedBox(
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
                                  ),
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
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
