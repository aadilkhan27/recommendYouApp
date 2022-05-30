import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/helper_controller.dart';
import 'package:recommend_you/app/modules/dashboard/home/helper/sendemail/sendemail_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_controller.dart';

import '../../../../../dataModel/HelperModel.dart';
import '../../../../core/values/colors.dart';
import '../../../../core/values/keys.dart';
import '../../../../core/values/strings.dart';

class HelperView extends GetView<HelperController> {


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
                            Text('Ask an expert fot recomendations'),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => SendEmailView())
                                );
                              },
                              child: Container(
                                height: 50,
                                padding: EdgeInsets.only(left: 10),
                                child: SvgPicture.asset(
                                  nextArrows,
                                  semanticsLabel: 'logo',
                                ),
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
                            child: Column(
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
                                        GetBuilder<HelperController>(
                                          builder:(_)=>
                                           Checkbox(
                                            checkColor: Colors.white,
                                            activeColor: Colors.purple,
                                            value: controller.helperList[index].itemSelect,
                                            onChanged: (bool? value) {
                                              controller.itemChange(value!, index);
                                              controller.update();
                                            },

                                          ),
                                        ),
                                        Container(
                                            width: 40.0,
                                            height: 40.0,
                                            decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: new DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(controller.helperList[index].userImage)))),
                                                        //images[index])))),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Ramon Ricardo',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),


                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Column(
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(left: 25, right: 15, top: 5),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: RichText(
                                                  maxLines: 3,
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                      text: dummyLoremIpsum2,
                                                      style: TextStyle(fontSize: 14, color: Colors.black, height: 1.4),
                                                    ),
                                                    TextSpan(
                                                      text: ' View more',
                                                      style: TextStyle(
                                                          fontSize: 14, color: primaryDarkColor),
                                                    )
                                                  ]),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50, right: 15),
                                      child: Divider(color: Colors.grey, height: 1,),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                               /* Divider(
                                  height: 1,
                                  color: Colors.black,
                                ),*/
                              ],
                            ),
                          );
                        },
                        itemCount: controller.helperList.length,
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




