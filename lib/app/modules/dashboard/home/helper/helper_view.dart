import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/sendemail/sendemail_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_controller.dart';

import '../../../../core/values/colors.dart';
import '../../../../core/values/keys.dart';

class HelperView extends GetView<ChangeContactController>{

  List<String> images = [
    user1,
    user2,
    user3,
    user4,
    user1,
    user2,
    user3,
    user4,
    user1,
    user2,
    user3,
    user4,
  ];

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
                            Text('Helper'),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => SendEmailView()));
                              },
                              child: Text(
                                "Send",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            ),
                              SizedBox(
                                width: 10,
                              ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (BuildContext, index) {
                          return Container(
                            child:  Column(
                          children: [
                          SizedBox(
                          width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                          children: [
                            Checkbox(
                              value: false, onChanged: (bool? value) {

                            },
                            ),
                          Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(images[index])))),
                          SizedBox(
                          width: 10,
                          ),
                          Text(
                          'Ramon Ricardo',
                          style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight:
                          FontWeight.normal),
                          ),
                          ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 45,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight:
                                FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                            SizedBox(
                              height: 5,
                            ),
                          ],

                          ),
                            Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                          ],
                          ),
                          );
                        },
                        itemCount: images.length,
                        padding: EdgeInsets.only(top: 10),
                        scrollDirection: Axis.vertical,
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}