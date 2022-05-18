import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
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
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'New',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Viana Branding',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Requested to follow you',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                    FontWeight.normal),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '6h',
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.normal,
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Delete',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            height: 25,
                                            width: 70,
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
                                              'Confirm',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ],
                                      ))
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
