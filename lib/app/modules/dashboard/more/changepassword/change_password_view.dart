import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: 50,
                              padding: EdgeInsets.only(left: 10),
                              child: SvgPicture.asset(
                                icLeftArrow,
                                semanticsLabel: 'logo',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Change your password')
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Enter your old password',
                        contentPadding: EdgeInsets.all(10),
                        //hintText: '****************'
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Enter your new password',
                          contentPadding: EdgeInsets.all(10),
                          hintText: '****************'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.purple, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Confirm new password',
                          contentPadding: EdgeInsets.all(10),
                          hintText: '****************'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          margin: const EdgeInsets.all(45),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              border: Border.all(color: Colors.purple),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          alignment: Alignment.center,
                          child: const Text(
                            'SAVE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
