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

class UserProfileView extends GetView<ProfileController> {
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
          child: Container(
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
                        InkWell(
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 10),
                            child: SvgPicture.asset(icMenuOption, width: 10,
                              height: 10,
                              color: Colors.black,),
                          ),
                          onTap: () {
                            showMenuOptions(context);
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

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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

                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 25, right: 25, top: 5),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Ramon Ricardo',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                )
                            )),
                        SizedBox(
                          width: 10,
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

                        SizedBox(
                          height: 20,
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
                )


              ],
            )
          )
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
/*  showMenu<String>(
    context: buildContext,
    position: RelativeRect.fromLTRB(67.0, 67.0, 0.0, 0.0),
    //position where you want to show the menu on screen
    items: [
      PopupMenuItem<String>(child: const Text('View with whome the post was share'), value: '1'),
      PopupMenuItem<String>(child: const Text('Delete'), value: '2'),
    ],
    elevation: 8.0,
  ).then((itemSelected) => {
        if (itemSelected == "1")
          {
            //Get.toNamed(Routes.editProfile)
          }
        else
          {
            //code here
          }
      });*/

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

showMenuOptions(BuildContext buildContext) {
  showMenu<String>(
    context: buildContext,
    position: RelativeRect.fromLTRB(67.0, 67.0, 0.0, 0.0),
    //position where you want to show the menu on screen
    items: [
      PopupMenuItem<String>(child: const Text('Block'), value: '1'),
    ],
    elevation: 8.0,
  ).then((itemSelected) => {
        if (itemSelected == "1")
          {
            //Get.toNamed(Routes.editProfile)
          }
        else
          {
            //code here
          }
      });
}


/*
*
*  SliverAppBar(
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
                              InkWell(
                  child: Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 10),
                    child: SvgPicture.asset(icMenuOption, width: 10,
                      height: 10,
                      color: Colors.black,),
                  ),
                  onTap: () {
                    showMenuOptions(context);
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

                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Ramon Ricardo',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            )
                          )),
                      SizedBox(
                        width: 10,
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

                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ), // This is where you build the profile part
                ),
              ),
*
* */