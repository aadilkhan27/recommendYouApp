import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';

import '../../../../core/values/keys.dart';

class DeleteAccountView extends GetView<ContactUsController> {
  final List<String> countryItems = [
    'India',
    'Russia',
  ];
  String? selectedValue;

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
              SafeArea(
                child: Container(
                  child: Column(
                    children: [
                      Column(
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
                                  Text('Delete Account'),

                                ],
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                            height: 1,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25.0, left: 30, right: 30),
                            child: Text(
                              'We are sorry you want to leave. Can you tell us why? We would like to learn from any mistakes we may have made.',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            child: Column(children: [
                              CheckboxListTile(
                                value: false,
                                onChanged: (value) {},
                                title: Text('The content is not interesting'),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                              CheckboxListTile(
                                value: false,
                                onChanged: (value) {},
                                title: Text('There are too much spam'),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                              CheckboxListTile(
                                value: false,
                                onChanged: (value) {},
                                title: Text('I don\'t trust this platform'),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                              CheckboxListTile(
                                value: false,
                                onChanged: (value) {},
                                title: Text('Other'),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Align(
                                  child: Text(
                                    'Please give us additional explanation',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14.0),
                                    textAlign: TextAlign.start,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                             /* Container(
                                margin: EdgeInsets.all(12),
                                height: 15 * 24,
                                child: TextField(
                                  cursorColor: Colors.purple,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.purple),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.purple),
                                    ),
                                    focusColor: Colors.purple,

                                    hintText: "Enter a message",
                                    fillColor: Colors.grey[300],
                                    filled: true,
                                  ),
                                ),
                              ),*/

                            Container(
                                margin: EdgeInsets.all(12),
                                height: 15 * 24,
                                child: TextField(
                                  cursorColor: Colors.purple,
                                  maxLines: 15,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.purple),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.purple),
                                      ),
                                      focusColor: Colors.purple,
                                    //hintText: "Enter a message",
                                    fillColor: Colors.grey[300],
                                    filled: true,
                                  ),
                                ),
                            )

                            ]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          border: Border.all(color: Colors.purple),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      alignment: Alignment.center,
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
