import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
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
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: SvgPicture.asset(
                                  icLeftArrow,
                                  semanticsLabel: 'logo',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Contact Us')
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
                      Text(
                        'Contact Us',
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Lorem ipsum lorem ipsum lorem ipsum lorem ipsum',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Name',
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Ramon Doe'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Email',
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'last name'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Mobile number',
                              contentPadding: EdgeInsets.all(10),
                              hintText: '01234567890'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              labelStyle: TextStyle(color: Colors.black),
                              labelText: 'Message',
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Lorem ipsum'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,left: 0,bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        alignment: Alignment.center,
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
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
