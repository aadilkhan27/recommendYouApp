import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/login/resetpassword/reset_password_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class ResetPasswordView extends GetView<ResetPasswordController>{
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
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 30, top: 20),
                            child: InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child:  SvgPicture.asset(
                                icLeftArrow,
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
                      'Reset your password?',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35, right: 35, top: 10),
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
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Create new password',
                          contentPadding: EdgeInsets.all(10),
                          //hintText: 'Password'
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 35, right: 35, top: 10),
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
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Confirm New Password',
                          contentPadding: EdgeInsets.all(10),
                          //hintText: 'Password'
                        ),
                      ),
                    ),
                    Spacer(),

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
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
//do something
                              Get.toNamed(Routes.signInView);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 35, right: 35, bottom: 100),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: primaryDarkColor,
                                  border: Border.all(color: primaryDarkColor),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                              alignment: Alignment.center,
                              child: const Text(
                                'RESET',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
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

