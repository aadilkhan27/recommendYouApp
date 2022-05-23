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
                     /* Padding(
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
                              //hintText: 'Ramon Doe'
                          ),
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
                              //hintText: 'last name'
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: TextField(
                          keyboardType: TextInputType.number,
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
                              //hintText: '01234567890'
                          ),
                        ),
                      ),
                      *//*Container(
                        height: 15 * 24,
                        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
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
                              //hintText: 'Lorem ipsum'
                            ),
                        ),
                      ),*//*
                      Container(
                        margin: EdgeInsets.only(left: 30, right: 30, top: 20),
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
                            hintText: "Message",
                            fillColor: Colors.grey[300],
                            filled: true,
                          ),
                        ),
                      )*/



                      Column(

                        children: [

                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 10),
                                        child: Text(
                                          'First name',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, right: 10),
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.purple),
                                            ),
                                            //hintText: 'Richard',
                                            hintStyle: TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 10),
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, right: 10),
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.purple),
                                            ),
                                            //hintText: 'Richard',
                                            hintStyle: TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 10),
                                        child: Text(
                                          'Mobile Number',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, right: 10),
                                      child: TextField(
                                        keyboardType: TextInputType.number,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.purple),
                                            ),
                                            //hintText: 'Richard',
                                            hintStyle: TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),

                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 10),
                                        child: Text(
                                          'Message',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(12),
                                      height: 10 * 24,
                                      child: TextField(
                                        cursorColor: Colors.purple,
                                        maxLines: 15,
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.purple),
                                          ),
                                          focusColor: Colors.purple,
                                          hintText: "Reason",
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                          ),


                        ],
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
