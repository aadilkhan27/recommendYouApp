import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/login/signin/sign_in_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 0),
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
                    Column(children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: Image(
                          image: AssetImage(bgSplash),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Login to your account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35, top: 10),
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
                            //hintText: 'Username'
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                            labelText: 'Password',
                            contentPadding: EdgeInsets.all(10),
                            //hintText: 'Password'
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          //do something
                          //do something
                          Get.offNamed(Routes.landing);
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //   content: Text('Coming soon'),
                          // ));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 35, right: 35, top: 20),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: primaryDarkColor,
                              border: Border.all(color: primaryDarkColor),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          alignment: Alignment.center,
                          child: const Text(
                            'SIGN IN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.forgotPassword);
                        },
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: primaryDarkColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.forgotUsername);
                        },
                        child: Text(
                          'Forgot username?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: primaryDarkColor,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ])
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
