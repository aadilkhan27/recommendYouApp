import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/languageselect/language_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class LanguageView extends GetView<LanguageController> {
  final List<String> languageItems = [
    'English',
    'French',
  ];
  String? selectedValue;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteColor,
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             /* Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryDarkColor),
                    borderRadius: const BorderRadius.all(Radius.circular(5))
                ),
                margin: const EdgeInsets.only(right: 45, left: 45, top: 25),
                child: DropdownButtonFormField2(
                  decoration: InputDecoration(
                    isDense: true,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: primaryDarkColor, width: 0.5),
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Select Your Language',
                    style: TextStyle(fontSize: 14),
                  ),
                  icon: SvgPicture.asset(icDownArrow),
                  iconSize: 30,
                  buttonHeight: 60,
                  buttonPadding: const EdgeInsets.only(left: 10, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  items: languageItems
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),)
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
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
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 45, left: 45, top: 25),
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
                    'Select Your Language',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  icon: SvgPicture.asset(icDownArrow),
                  iconSize: 30,
                  buttonHeight: 60,
                  buttonPadding:
                  const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  items: languageItems
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      //style: const TextStyle(fontSize: 12, color: Colors.purple),
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
              InkWell(
                onTap: (){
                  showAlertDialog(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 45,left: 45,top: 25),
                  height: 50,
                  width: MediaQuery
                    .of(context)
                    .size
                    .width,
                  decoration: BoxDecoration(
                    color: primaryDarkColor,
                      border: Border.all(color: primaryDarkColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  alignment: Alignment.center,
                  child: const Text(createAnAccount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
              InkWell(
                onTap: (){
                  //do something
                  Get.toNamed(Routes.signInView);
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 45,right:45,top: 25 ),
                  height: 50,
                  width: MediaQuery
                    .of(context)
                    .size
                    .width,
                  decoration: BoxDecoration(
                    color: primaryDarkColor,
                      border: Border.all(color: primaryDarkColor),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  alignment: Alignment.center,
                  child: const Text(loginWithYourAccount,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
      Get.toNamed(Routes.signUpStepOne);
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
      style: TextStyle(color: Colors.black, fontSize: 12),
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
