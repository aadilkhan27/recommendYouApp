import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/registration/stepfour/step_four_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class StepFourView extends GetView<StepFourController> {
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
                              color: primaryDarkColor,
                              border: Border.all(color: primaryDarkColor),
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
                  SizedBox(height: 30,),
                  Text(
                    logInInfo,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color : Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Padding(
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
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'username'
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        cursorColor: Colors.black,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'Password'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        cursorColor: Colors.black,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'Confirm Password'
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        passwordValidMsg,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal, color : Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By creating this account you confirm you have read and accept the',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' user agreement',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                                color: primaryDarkColor),
                          ),
                          TextSpan(
                            text: ' and the ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' privacy policy ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                                color: primaryDarkColor),
                          ),
                          TextSpan(
                            text: ' of RecommendYou ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 40,right: 10,left: 10),
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
                                Get.offNamed(Routes.signInView);
                              },
                              child: Text('SEND',
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
