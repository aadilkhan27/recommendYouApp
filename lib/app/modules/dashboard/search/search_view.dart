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
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: TabBar(
              unselectedLabelColor: primaryLightColor,
              labelColor: primaryDarkColor,
              indicatorColor: primaryDarkColor,
              controller: _tabx.controller,
              tabs: _tabx.myTabs,
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabx.controller,
          children: [SearchPostView(), SearchPeopleView()],
        ),
      ),
    );
  }
}
