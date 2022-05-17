import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/login/forgotusername/forgot_username_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class ForgotUsername extends GetView<ForgotUsernameController>{
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
                    width: 100,
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
                    TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,right: 35),
                    child: Text(
                      'Enter your registered mobile number and we will send you an OTP (Temporary password) to reset your password',
                      style:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
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
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'mobile number'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      //do something
                      Get.toNamed(Routes.otpVerify);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(25),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: primaryDarkColor,
                          border: Border.all(color: primaryDarkColor),
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5))),
                      alignment: Alignment.center,
                      child: const Text(
                        'SEND OTP(Temporary password)',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Havn\'t received the OTP? send a message to contact@recommendyou.nl, using the email address registered with us',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
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