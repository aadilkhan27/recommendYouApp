import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/sendemail/sendemail_controller.dart';
import 'package:recommend_you/app/modules/dashboard/landining/landing_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_controller.dart';

import '../../../../../core/values/colors.dart';
import '../../../../../core/values/keys.dart';
import '../../../../../core/values/strings.dart';
import '../../../../../routes/pages.dart';
import '../../../../../widgets/dropdown_button2.dart';

class SendEmailView extends GetView<SendEmailController>{

  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
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
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                       SizedBox(
                      height: 40,
                    ),

                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              child:  Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Send Email",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ),
                              onTap: () {
                                showAlertDialog(context);
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



                      Row(
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
                                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 10),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'From : Arash Dajbani',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Email : arash.dajbani@gmail.com',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ]
                                  ),
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

                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10, bottom: 10),
                                  child: Text(
                                    'To : Thomas Dobos',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
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


                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),




                    /*  Container(
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
                                fontSize: 14, color: Colors.black),
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
                              color: bonJourColor
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
                      ),*/

                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        //padding: EdgeInsets.only(left: 2, right: 2),
                        // margin: EdgeInsets.only(right: 15, left: 15),
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
                          hint: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Recommend',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: primaryDarkColor),
                                ),
                                TextSpan(
                                  text: 'You',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: primaryLightColor),
                                ),
                              ],
                            ),
                          ),


                          icon: SvgPicture.asset(icDownArrow),
                          iconSize: 30,
                          buttonHeight: 60,
                          iconEnabledColor: Colors.white,
                          selectedItemHighlightColor:
                          primaryLightColor,

                          buttonPadding: const EdgeInsets.only(left: 15, right: 20),
                          dropdownDecoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(5),
                              color: veryLightWhite),
                          items: spinnerItems
                              .map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                      fontSize: 14,
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
                        height: 0,
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(right: 12, left: 12, ),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.4),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "How can I help you?",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: false,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                      ),

                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(right: 12, left: 12, ),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.4),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "What are something you like or don't like?",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: false,
                          ),
                        ),
                      ),
                      /*Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return SafeArea(
                                      child: Wrap(
                                        children: [
                                          ListTile(
                                            leading:
                                            Icon(Icons.camera_alt_rounded),
                                            title: Text(
                                              'Add an image or video',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          Divider(
                                            height: 1,
                                            color: Colors.black,
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.save_outlined),
                                            title: Text(
                                              'Save for my self',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            onTap: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                content: Text('Saved'),
                                              ));
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          Divider(
                                            height: 1,
                                            color: Colors.black,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Share :',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            leading: Icon(Icons.share),
                                          ),
                                          Divider(
                                            height: 1,
                                            color: Colors.black,
                                          ),
                                          ListTile(
                                            title: Text('Publically'),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          ListTile(
                                            title: Text(
                                                'With one or more followers'),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          ListTile(
                                            title: Text('Using other apps'),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          ListTile(
                                            title: Text('With helpers'),
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.purple),
                            ))),
                  )*/
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
    );
  }


  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget continueButton = TextButton(
      child: Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
            color: primaryDarkColor,
            border: Border.all(color: primaryDarkColor),
            borderRadius: const BorderRadius.all(Radius.circular(7))),
        alignment: Alignment.center,
        child: const Text(
          'OK',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
        //Get.toNamed(Routes.landing);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (builder) => LandingView()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Successfully Email Send",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      content: Text(
        dummyLoremIpsum,
        style: TextStyle(color: Colors.black, fontSize: 12, height: 1.5),
      ),
      actions: [
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}