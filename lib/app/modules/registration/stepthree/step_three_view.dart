import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/registration/stepthree/step_three_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class StepThreeView extends GetView<StepThreeController> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
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
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      verifyYourNumber,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        enterBelowCodeMsg,
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 60, right: 60, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: primaryDarkColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: primaryDarkColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(10),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: primaryDarkColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: primaryDarkColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(10),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: primaryDarkColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: primaryDarkColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(10),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: primaryDarkColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: primaryDarkColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: TextField(
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(10),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: primaryDarkColor, width: 1.0),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: BorderSide(
                                        color: primaryDarkColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40, right: 10, left: 10),
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
                                Get.offNamed(Routes.signUpStepFour);
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
