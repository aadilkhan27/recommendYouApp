import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/registration/stepone/step_one_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class StepOneView extends GetView<StepOneController> {
  final List<String> countryItems = [
    'India',
    'Russia',
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 0,
                            width: 10,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width / 4) - 15,
                            height: 10,
                            decoration: BoxDecoration(
                                color: primaryDarkColor,
                                border: Border.all(color: primaryDarkColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                          ),
                          SizedBox(
                            height: 0,
                            width: 10,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width / 4) - 15,
                            height: 10,
                            decoration: BoxDecoration(
                                color: primaryLightColor,
                                border: Border.all(color: primaryLightColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                          ),
                          SizedBox(
                            height: 0,
                            width: 10,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width / 4) - 15,
                            height: 10,
                            decoration: BoxDecoration(
                                color: primaryLightColor,
                                border: Border.all(color: primaryLightColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                          ),
                          SizedBox(
                            height: 0,
                            width: 10,
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width / 4) - 25,
                            height: 10,
                            decoration: BoxDecoration(
                                color: primaryLightColor,
                                border: Border.all(color: primaryLightColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                          ),
                          SizedBox(
                            height: 0,
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      signUp,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (){
                        showAlertDialogPrivacyPolicy(context);
                      },
                      child: Text(
                        readPolicyMsg,
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: primaryDarkColor, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'First Name',
                          labelStyle: TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.all(10),
                          //hintText: '',
                          //hintStyle: TextStyle(fontSize: 12.0, color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelStyle: TextStyle(color: Colors.black),
                            labelText: 'Last Name',
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'last name',
                            //hintStyle: TextStyle(fontSize: 12.0, color: Colors.black)
                          )),
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(right: 30, left: 30, top: 25),
                      child: DropdownButtonFormField2(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: primaryDarkColor, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Select your country',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        icon: SvgPicture.asset(icDownArrow),
                        iconSize: 30,
                        buttonHeight: 60,
                        buttonPadding: const EdgeInsets.only(left: 10, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        items: countryItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select country.';
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
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Email Address',
                          contentPadding: EdgeInsets.all(10),
                          //hintText: 'email address',
                          //hintStyle: TextStyle(fontSize: 12.0, color: Colors.black)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,left: 0,bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40, left: 10, right: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 60,
                            margin: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: primaryDarkColor,
                                border: Border.all(color: primaryDarkColor),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'BACK',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Spacer(),
                          Container(
                              height: 35,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: primaryDarkColor,
                                  border: Border.all(color: primaryDarkColor),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(5))),
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: TextButton(
                                  onPressed: () {
                                    //showAlertDialog(context);
                                    Get.toNamed(Routes.signUpStepTwo);
                                  },
                                  child: Text('NEXT',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
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
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Get.toNamed(Routes.signUpStepTwo);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Mobile number",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      dummyLoremIpsum,
      style: TextStyle(color: Colors.black, fontSize: 12, height: 1.5),
    ),
    actions: [
      continueButton,
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

showAlertDialogPrivacyPolicy(BuildContext context) {
  // set up the buttons
  Widget continueButton = TextButton(
    child: Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
          color: primaryDarkColor,
          border: Border.all(color: primaryDarkColor),
          borderRadius: const BorderRadius.all(Radius.circular(7))),
      alignment: Alignment.center,
      child: const Text(
        'CONFIRM',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepOne);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Privacy Info",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      dummyLoremIpsum,
      style: TextStyle(color: Colors.black, fontSize: 12, height: 1.4),
    ),
    actions: [
      continueButton,
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


