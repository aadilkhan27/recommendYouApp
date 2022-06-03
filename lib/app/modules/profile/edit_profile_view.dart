import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/profile/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
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
                                  child:  Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                          'Cancel',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                                        ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),

                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Container(

                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.purple,),
                                        color: Colors.purple,
                                        borderRadius: const BorderRadius.all(Radius.circular(5))
                                    ),
                                    margin: const EdgeInsets.only(right: 10, left: 10),
                                    padding : const EdgeInsets.only(right: 10, left: 10, top : 5, bottom: 5),
                                    child: Text(
                                      "SAVE",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white,),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        Container(
                          height: 120,
                          width: 120,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 0.0),
                                child: new Stack(fit: StackFit.loose, children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              image: new AssetImage(
                                                  profileImage3),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(right: 10.0, top: 70),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[

                                          Container(
                                            height: 30,
                                            width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.purple,
                                                  border: Border.all(color: Colors.purple),
                                                  borderRadius:
                                                  const BorderRadius.all(Radius.circular(15))),
                                            padding: EdgeInsets.all(5),

                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 16,
                                            )
                                          )
                                        ],
                                      )),
                                ],
                                )
                              )
                                  ]
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Change your profile photo',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,right: 10),
                                          child: Text(
                                            'First name',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20, right: 10),
                                        child: TextFormField (
                                          initialValue: "Ramon",
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.purple),
                                              ),
                                              hintText: '',
                                              hintStyle: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width/2,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 20),
                                          child: Text(
                                            'Last name',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10, right: 20),
                                        child: TextFormField (
                                          initialValue: "Ricardo",
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.purple),
                                              ),
                                              hintText: '',
                                              hintStyle: TextStyle(color: Colors.grey)),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20,right: 10),
                                          child: Text(
                                            'User name',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20, right: 20),
                                        child: TextField(
                                          enabled: false,
                                          cursorColor: Colors.black,
                                          decoration: InputDecoration(
                                              enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                              hintText: 'Ramon_Ricardo',
                                              hintStyle: TextStyle(color: Colors.black)),
                                        ),
                                      ),
                                    ],
                                  )
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 10),
                                      child: Text(
                                        'Bio',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    child: Container(
                                      child: TextField(
                                        keyboardType: TextInputType.multiline,
                                        maxLength: 1000,
                                        maxLines: null,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.purple),
                                            ),
                                            hintText: "Tell others about yourself including the thinga you like",
                                            hintStyle: TextStyle(color: Colors.grey)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                        ),
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
