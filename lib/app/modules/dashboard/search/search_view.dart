import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_controller.dart';

import '../../../core/values/keys.dart';

class SearchView extends GetView<SearchController> {
  final SearchController _tabx = Get.put(SearchController());

  List<String> images = [
    profileImage1,
    profileImage2,
    profileImage3,
    profileImage4,
    profileImage5,
    profileImage1,
    profileImage2,
    profileImage3,
    profileImage4,
    profileImage5,
    profileImage1,
    profileImage2,
    profileImage3,
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
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [

                    /*Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              color: Colors.purple,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              )),
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 10, top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 10, bottom: 2, top: 2),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple),
                                  ),
                                  focusColor: Colors.white,
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Search',
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),*/

                    Container(
                      height : 45,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: 20, right: 20, bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                          color: Colors.purple,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.purple),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              focusColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: 'Search',

                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              )
                          ),
                        ),
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
                                      SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: new DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        images[index])))),
                                        onTap: () {
                                          showAlertDialogImage(
                                              context, images[index]);
                                        },
                                      ),
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
                                              'Ramon Ricardo',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                  FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Ramon_Ricardo',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight:
                                                  FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      //Container(child: SvgPicture.asset(icClose),margin: EdgeInsets.only(right: 20),)
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
                  ])),
            )
        )
    );
  }

  showAlertDialogImage(BuildContext context, String image) {
//image: Image(image: AssetImage(user1),
    Dialog alert = Dialog(
      child: Stack(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(image), fit: BoxFit.cover)),
        ),
        Positioned(
          top: 15, right: 15, //give the values according to your requirement
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close, color: Colors.black),
          ),
        ),
      ]),
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

/* Container(
                  child: TabBar(
                  controller: controller.tabController,
                  tabs: controller.referralTabs,
                  labelColor: primaryDarkColor,
                  unselectedLabelColor: primaryLightColor,
                  indicatorColor: primaryDarkColor),
                ),
                Expanded(
                    child: TabBarView(
                        controller: controller.tabController,
                        children: [
                           SearchPeopleView(),
                           SearchPostView(),
                          ]
                    ),
                ),*/
