import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_view.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_view.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_view.dart';

import 'dashboard_controller.dart';
import 'more/more_2_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                NotificationView(),
                CreateView(),
                SearchView(),
                More2View()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            backgroundColor: Colors.white,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            elevation: 10,
            items: [
              _bottomNavigationBarItem(icon: controller.tabIndex == 0 ? bottomHomeFill : bottomHome,
                  iconWidth: 20.0,
                  iconHeight: 20.0,
                  label: '',
                  //iconColor: controller.tabIndex == 0 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(icon: controller.tabIndex == 1 ? bottomNotificationFill : bottomNotification,
                  iconWidth: 20.0,
                  iconHeight: 20.0,
                  label: '',
                  //iconColor: controller.tabIndex == 1 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(icon: controller.tabIndex == 2 ? bottomAddFill : bottomAdd,
                  iconWidth: 20.0,
                  iconHeight: 20.0,
                  label: '',
                  //iconColor: controller.tabIndex == 2 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(icon: controller.tabIndex == 3 ? bottomSearchFill : bottomSearch,
                  iconWidth: 20.0,
                  iconHeight: 20.0,
                  label: '',
                  //iconColor: controller.tabIndex == 3 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(icon: controller.tabIndex == 4 ? bottomMenu : bottomMenu,
                  iconWidth: 20.0,
                  iconHeight: 20.0,
                  label: '',
                  //iconColor: controller.tabIndex == 4 ? crustaColor : nobelColor
              ),
            ],
          ),
        );
      },
    );
  }
}

_bottomNavigationBarItem({icon, required double iconWidth, required double iconHeight, required String label, iconColor}) {
  return BottomNavigationBarItem(icon: SvgPicture.asset(
      icon!, width: iconWidth,
      height: iconHeight,
      allowDrawingOutsideViewBox: true,
      color: iconColor), label: label);
}


