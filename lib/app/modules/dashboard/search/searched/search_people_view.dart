import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/search/searched/search_people_controller.dart';

class SearchPeopleView extends GetView<SearchPeopleController> {
  List<String> images = [
    "Anil",
    "Sunil",
    "Mukesh",
    "Ramesh",
    "Gaurav",
    "Punit",
    "Punits",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
    "PunitHarish",
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext, item) {
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
                                            image: AssetImage(profileImage)))),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ramon Ricardo',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight:
                                            FontWeight.normal),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(icTagArrow),
                                            Text(
                                              'Category Text Public',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.black,
                          )
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
    );
  }
}
