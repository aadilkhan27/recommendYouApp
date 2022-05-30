import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/profile/edit_profile_controller.dart';

import '../../../routes/pages.dart';
import 'likes_controller.dart';

class LikesView extends GetView<LikesController> {

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
          body: SafeArea(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [

                  /*Container(
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
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
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
                        ),*/

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
                            'Likes',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset(
                                icHeartClick,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '280',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                            ],
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
                                          InkWell(
                                            child: Text(
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            onTap: () {
                                              Get.toNamed(Routes.userProfile);
                                            },
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
          )
      )

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
}

/*
* Container(
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
                                  'Likes',
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      icHeartClick,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '280',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),

                      ],
                    ),
                  ),
* */

