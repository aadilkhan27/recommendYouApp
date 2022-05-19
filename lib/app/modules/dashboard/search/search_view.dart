import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_controller.dart';

import '../../../core/values/keys.dart';

class SearchView extends GetView<SearchController> {
  final SearchController _tabx = Get.put(SearchController());

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
                  child: Column(
                      children: [
                        Container(
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
                            left: 10.0, right: 0, bottom: 2, top: 2),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
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
                                                SizedBox(
                                                  height : 5,
                                                ),
                                                Text(
                                                  'Ramon_Ricardo',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold),
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
                        ]
                  )
              )
            )
        )
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
