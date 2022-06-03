import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class NotificationView extends GetView<NotificationController> {
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
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
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
                          margin: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 10,
                              left: 10),
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
                                        /*showAlertDialogForProfile(
                                            context, image1);*/
                                        Get.toNamed(Routes.profileView);
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
                                                image1),
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
                                        mainAxisAlignment: MainAxisAlignment.center,
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
                                        /*showAlertDialogForProfile(
                                            context, image2);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image2),
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
                                        /*showAlertDialogForProfile(
                                            context, image3);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image3),
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
                                        /*showAlertDialogForProfile(
                                            context, image4);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image4),
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
                                        /*showAlertDialogForProfile(
                                            context, image5);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image5),
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
                                        /*showAlertDialogForProfile(
                                            context, image6);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image6),
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
                                        /*showAlertDialogForProfile(
                                          context, image1);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image1),
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
                                        /*showAlertDialogForProfile(
                                            context, image2);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image2),
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
                                        /*showAlertDialogForProfile(
                                            context, image3);*/
                                        //Get.toNamed(Routes.userProfile);
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
                                                image3),
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
                                        /*showAlertDialogForProfile(
                                            context, image4);*/

                                        Get.toNamed(Routes.userProfile);
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
                                                image4),
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
                                        /*showAlertDialogForProfile(
                                            context, image5);*/

                                        //Get.toNamed(Routes.userProfile);
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
                                                image5),
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
                                        /*showAlertDialogForProfile(
                                            context, image6);*/

                                        //Get.toNamed(Routes.userProfile);
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
                                                image6),
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
                        ),
                        /*Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
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
                              )),*/
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