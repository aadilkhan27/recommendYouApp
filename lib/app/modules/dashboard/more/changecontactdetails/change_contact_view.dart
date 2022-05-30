import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_controller.dart';

import '../../../../core/values/colors.dart';
import '../../../../core/values/keys.dart';

class ChangeContactView extends GetView<ChangeContactController> {
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
                                      Text('Change contact details')
                                    ],
                                  ),
                                ),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  /*Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 30, right: 30),
                                      child: Text(
                                        'Enter your phone number',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30, right: 30),
                                    child: TextField(
                                      maxLength: 10,
                                      cursorColor: Colors.black,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.purple),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.purple),
                                          ),
                                          hintText: '9859859856',
                                          hintStyle: TextStyle(color: Colors.grey)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),*/
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 30, right: 30),
                                      child: Text(
                                        'Email Address',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30, right: 30),
                                    child: TextFormField (
                                      initialValue: "ramonoricoda@gmail.com",
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.purple),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.purple),
                                          ),
                                          hintText: 'ramonoricoda@gmail.com',
                                          hintStyle: TextStyle(color: Colors.grey)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(40),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(25),
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          border: Border.all(color: Colors.purple),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
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
                      ]
                  )
              )
          )
      )


    );
  }
}
