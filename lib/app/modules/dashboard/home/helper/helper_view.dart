import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
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
        resizeToAvoidBottomInset: false,
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
                            Text('Helper')
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
                                Container(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
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
                                        width: 20,
                                      ),
                                      Text(
                                        'Ramon Ricardo',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight:
                                            FontWeight.normal),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        padding: EdgeInsets.only(left: 5, right: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.purple,
                                            border: Border.all(
                                                color: Colors.purple),
                                            borderRadius:
                                            const BorderRadius.all(
                                                Radius.circular(5))),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: images.length,
                        padding: EdgeInsets.all(5),
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