import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import '../../../core/values/colors.dart';
import 'create_controller.dart';

class CreateView extends GetView<CreateController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
    'Categories 5',
    'Categories 6',
    'Categories 7',
    'Categories 8',
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
        body: Stack(
            children: [
              SingleChildScrollView(
                child:  Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text('Cancel'),
                              onTap: () {
                                //Get.back();
                              },
                            ),
                            Spacer(),
                            InkWell(
                              child: Text('Post'),
                              onTap: () {
                                //Get.back();
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Container(
                                      width: 60.0,
                                      height: 60.0,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(profileImage),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Roman Ricardo',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,

                        //margin: EdgeInsets.only(right: 15, left: 5),
                        child: DropdownButtonFormField2(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.white, width: 0.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.white, width: 0.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black, width: 0.0),
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          isExpanded: true,
                          hint: const Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 12, color: Colors.black),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          iconSize: 30,
                          buttonHeight: 60,
                          buttonPadding:
                          const EdgeInsets.only(left: 20, right: 10),
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          items: spinnerItems
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'RecommendYou';
                            }
                          },
                          onChanged: (value) {
                            //Do something when changing the item if you want.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(12),
                        height: 5 * 24,
                        child: TextField(
                          cursorColor: Colors.black,
                          maxLines: 5,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
                            ),
                            hintText: "Write a message here.....",
                            hintStyle: TextStyle(color: Colors.black),
                            filled: false,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 0, left: 0, right: 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    color: veryLightGreyTwoColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.camera_alt_rounded),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add an image or video',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
        ),
      ),



    /*  child: Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text('Cancel'),
                        onTap: () {
                          //Get.back();
                        },
                      ),
                      Spacer(),
                      InkWell(
                        child: Text('Post'),
                        onTap: () {
                          //Get.back();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(profileImage),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Roman Ricardo',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Option A',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Option B',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Ask a Question',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,

                  //margin: EdgeInsets.only(right: 15, left: 5),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black, width: 0.0),
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 12, color: Colors.black),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding:
                    const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: spinnerItems
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'RecommendYou';
                      }
                    },
                    onChanged: (value) {
                      //Do something when changing the item if you want.
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 5 * 24,
                  child: TextField(
                    cursorColor: Colors.black,
                    maxLines: 5,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: "Write a message here.....",
                      hintStyle: TextStyle(color: Colors.black),
                      filled: false,
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),*/
    );
  }
}
