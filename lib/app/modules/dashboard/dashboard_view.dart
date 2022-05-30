import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/createpost/create_view.dart';
import 'package:recommend_you/app/modules/dashboard/home/home_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_view.dart';
import 'package:recommend_you/app/modules/dashboard/notification/notification_view.dart';
import 'package:recommend_you/app/modules/dashboard/search/search_view.dart';

import 'dashboard_controller.dart';
import 'home/home_view_2.dart';
import 'more/changecontactdetails/change_contact_view.dart';
import 'more/changepassword/change_password_view.dart';
import 'more/contactus/contact_us_view.dart';
import 'more/deletaccount/delete_account_view.dart';
import 'more/faq/faq_view.dart';
import 'more/privacypolicy/privacy_policy_view.dart';
import 'more/termscondition/terms_condition_view.dart';

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
                MoreView()


                /*controller.tabIndex == 4
                    ? Scaffold(
                        body: AlertDialog(
                          content: Container(
                            child: Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    *//*Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                      leading: Icon(Icons.privacy_tip_outlined),
                      title: Text('Privacy'),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Privacy Settings',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text('Approve all follow requests'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: true,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                  ListTile(
                                    title: Text('Show me in search result'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: false,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                        'Show my bio also to non-followers'),
                                    trailing: Switch(
                                      activeColor: Colors.purple,
                                      activeTrackColor: Colors.purple,
                                      inactiveThumbColor: Colors.grey,
                                      inactiveTrackColor: Colors.black12,
                                      value: false,
                                      onChanged: (bool value) {},
                                    ),
                                  ),
                                ],
                              );
                            });
                      }),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.notifications_active_outlined),
                    title: Text('Notifications'),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Wrap(
                              children: [
                                ListTile(
                                  title: Text(
                                    'Receive notifications for :',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ListTile(
                                  title: Text('Post shared with me personally'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title:
                                      Text('Only posts in chosen categories'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: false,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                      'Post shared with me in helpers section'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text('message responses to posts'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: true,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                      'message responses in helper section'),
                                  trailing: Switch(
                                    activeColor: Colors.purple,
                                    activeTrackColor: Colors.purple,
                                    inactiveThumbColor: Colors.grey,
                                    inactiveTrackColor: Colors.black12,
                                    value: false,
                                    onChanged: (bool value) {},
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Setting Preference'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => PreferenceView()));
                    },
                  ),
                ),
                *//*

                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                          leading: Image(
                                            image: AssetImage(changeLanguage),
                                            width: 20,
                                            height: 20,
                                          ),
                                          title: Text('Language Change'),
                                          onTap: () {
                                            //Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangeLangugaeView()));
                                            *//* showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Wrap(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                'English',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                Fluttertoast.showToast(
                                                  msg: "Language Changed to English",
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text(
                                                'French',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              onTap: () {
                                                Navigator.of(context).pop();
                                                Fluttertoast.showToast(
                                                  msg: "Language Changed to French",
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );*//*

                                            showLanguageAlertDialog(context);
                                          }),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(changeContact),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Change Contact Details'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ChangeContactView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(changePassword),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Change Password'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ChangePasswordView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(deleteAcc),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Delete Account'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      DeleteAccountView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(termsConditions),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Terms and Conditions'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      TermsConditionView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(privacy),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Privacy Policy'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      PrivacyPolicyView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: const Image(
                                          image: AssetImage(contactUS),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: const Text('Contact Us'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      ContactUsView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: const Image(
                                          image: AssetImage(faqIcon),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: const Text('FAQ'),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (builder) =>
                                                      FaqView()));
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, right: 15.0),
                                      child: ListTile(
                                        leading: Image(
                                          image: AssetImage(logout),
                                          width: 20,
                                          height: 20,
                                        ),
                                        title: Text('Log Out'),
                                        onTap: () {
                                          showLogOutAlertDialog(context);
                                          // Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : MoreView()*/
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
              _bottomNavigationBarItem(
                icon: controller.tabIndex == 0 ? bottomHomeFill : bottomHome,
                iconWidth: 20.0,
                iconHeight: 20.0,
                label: '',
                //iconColor: controller.tabIndex == 0 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(
                icon: controller.tabIndex == 1
                    ? bottomNotificationFill
                    : bottomNotification,
                iconWidth: 20.0,
                iconHeight: 20.0,
                label: '',
                //iconColor: controller.tabIndex == 1 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(
                icon: controller.tabIndex == 2 ? bottomAddFill : bottomAdd,
                iconWidth: 20.0,
                iconHeight: 20.0,
                label: '',
                //iconColor: controller.tabIndex == 2 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(
                icon:
                    controller.tabIndex == 3 ? bottomSearchFill : bottomSearch,
                iconWidth: 20.0,
                iconHeight: 20.0,
                label: '',
                //iconColor: controller.tabIndex == 3 ? crustaColor : nobelColor
              ),
              _bottomNavigationBarItem(
                icon: controller.tabIndex == 4 ? bottomMenu : bottomMenu,
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

_bottomNavigationBarItem(
    {icon,
    required double iconWidth,
    required double iconHeight,
    required String label,
    iconColor}) {
  return BottomNavigationBarItem(
      icon: SvgPicture.asset(icon!,
          width: iconWidth,
          height: iconHeight,
          allowDrawingOutsideViewBox: true,
          color: iconColor),
      label: label);
}
