import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/login/forgotpassword/forgot_password_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
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
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0,
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Image(
                              image: AssetImage(backArrow),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image(
                      image: AssetImage(bgSplash),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot your password?',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 45, right: 45),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Enter your registered ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'mobile number ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: primaryDarkColor)),
                          TextSpan(
                              text: 'and we will send you an  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black))
                          ,TextSpan(
                              text: 'OTP  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: primaryDarkColor)),
                          TextSpan(
                              text: '(Temporary password) to reset your password  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black))
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: TextField(
                        maxLength: 10,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: primaryDarkColor, width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            labelStyle: TextStyle(color: primaryDarkColor),
                            labelText: 'Mobile number',
                            counterText: "",
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'mobile number'),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      //do something
                      Get.offNamed(Routes.otpVerify);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(30),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: primaryDarkColor,
                          border: Border.all(color: primaryDarkColor),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.center,
                      child: const Text(
                        'SEND OTP(Temporary password)',
                        style: TextStyle(
                            color: Colors.white,fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.only(left: 30, right:30),
                    padding: EdgeInsets.only(bottom: 20),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                'Havn\'t received the OTP? send a message to ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: 'contact@recommendyou.nl',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: primaryDarkColor),
                          ),
                          TextSpan(
                            text: ' using the email address registered with us',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
