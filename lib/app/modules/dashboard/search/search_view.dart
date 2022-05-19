import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/modules/dashboard/search/post/search_post_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_controller.dart';
import 'package:recommend_you/app/modules/dashboard/search/searched/search_people_view.dart';

class SearchView extends GetView<SearchController> {
  final SearchController _tabx = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()
    {
      FocusScope.of(context).unfocus();
    },
    child: Scaffold(
    /* appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: TabBar(
            unselectedLabelColor: primaryLightColor,
            labelColor: primaryDarkColor,
            indicatorColor: primaryDarkColor,
            controller: _tabx.controller,
            tabs: _tabx.myTabs,
          ),
        ),

        body: TabBarView(
          controller: _tabx.controller,
          children: [SearchPostView(), SearchPeopleView()],
        ),*/

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
                    )
                ),
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10,bottom: 2, top: 2),
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
                        hintStyle: TextStyle(color: Colors.white) ,
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search, color:Colors.white,)),
                  ),
                ),
              ),

                Container(
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
                          SearchPostView(), SearchPeopleView()
                          ]
                    ),
                ),
        ]
          )
      )


    ),
    ),
    );
  }
}
