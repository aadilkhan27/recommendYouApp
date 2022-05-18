import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/registration/steptwo/step_two_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class StepTwoView extends GetView<StepTwoController> {
  final List<String> yearItems = [
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: Stack(
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
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
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
                  Text(
                    addProfilePicture,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(profileImage),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    whatYearBorn,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 95, left: 95, top: 20),
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
                        'Choose a year',
                        style: TextStyle(fontSize: 14),
                      ),
                      icon: SvgPicture.asset(icDownArrow),
                      iconSize: 30,
                      buttonHeight: 60,
                      buttonPadding: const EdgeInsets.only(left: 10, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      items: yearItems
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Choose a year.';
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
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        whatIsYourGender,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10, left: 10),
                            padding: EdgeInsets.only(
                                left: 15, top: 10, bottom: 10, right: 15),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              'Male',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 15),
                            decoration: BoxDecoration(
                                color: primaryDarkColor,
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              'Female',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.only(
                                left: 15, top: 10, bottom: 10, right: 15),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Text(
                              'Other',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        whatIsYourMobile,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 40, top: 0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        cursorColor: Colors.black,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'Mobile Number'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Text(
                        readWhatWeWillUseItFor,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: primaryLightColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
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
                                Get.offNamed(Routes.signUpStepThree);
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
            )
          ],
        ),
      ),
    );
  }
}
