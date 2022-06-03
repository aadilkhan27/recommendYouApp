import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import '../../../core/values/colors.dart';
import '../../../core/values/strings.dart';
import 'create_controller.dart';

class CreateView extends GetView<CreateController> {
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
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteColor,
        body: Stack(children: [
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
                                      image: AssetImage(profileImage3),
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
                    height: 0.5,
                  ),
                  SizedBox(
                    height: 10,
                  ),




                  /*  Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,

                        //margin: EdgeInsets.only(right: 15, left: 5),
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.white, width: 0.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.white, width: 0.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black, width: 0.0),
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
                              color: bonJourColor
                          ),
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
                      ),*/

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
                          borderSide: const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(color: Colors.white, width: 0.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 0.0),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      isExpanded: true,
                      hint: Text(
                        '* Category',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),

                      icon: SvgPicture.asset(icDownArrow),
                      iconSize: 30,
                      buttonHeight: 60,
                      iconEnabledColor: Colors.white,
                      selectedItemHighlightColor:
                      primaryLightColor,

                      buttonPadding: const EdgeInsets.only(left: 15, right: 20),
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
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return '* Category';
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
      ),
    );
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
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),
        ),
      ),
      onPressed: () {
        /*Navigator.of(context).pop();
        Get.toNamed(Routes.dashboard);*/
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Row(
        children: [
          Text(
            "Successfully posted",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10,),
          SvgPicture.asset(
            icCheckMark,
            semanticsLabel: 'logo',
          ),
        ],
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
}
