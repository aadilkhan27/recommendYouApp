import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/dashboard/search/post/search_post_controller.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class SearchPostView extends GetView<SearchedPostController> {
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

  String? selectedValue;
  final List<String> spinnerItems = [
    'All Messages',
    'Home Page',
    'Saved Messages',
    'Ask a question',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'All messages',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple),
                        color: Colors.purple,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
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
                          'All Messages',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        iconSize: 30,
                        buttonHeight: 60,
                        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: spinnerItems
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white),
                          ),
                        ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'All Messages';
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
                  ],
                ),
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
                                              image: AssetImage(profileImage)))),
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
                                  left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image(image: AssetImage(image1))
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
                                              image: AssetImage(profileImage)))),
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
                                  left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
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
                                              image: AssetImage(image3)))),
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
                                  left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
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
                                              image: AssetImage(profileImage)))),
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
                                  left: 20, right: 20, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    dummyLoremIpsum,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image(image: AssetImage(image3))
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
