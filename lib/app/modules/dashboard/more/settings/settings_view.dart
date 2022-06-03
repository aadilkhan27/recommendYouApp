
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/more/changecontactdetails/change_contact_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changelanguage/change_language_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/changepassword/change_password_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/more_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/privacypolicy/privacy_policy_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/settingpreference/preference_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/settings/settings_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/terms_condition_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/termscondition_binding.dart';


import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/values/colors.dart';
import '../../../login/signin/sign_in_view.dart';
import '../deletaccount/delete_account_view.dart';
import '../faq/faq_view.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
            child: Stack(
                children: [
                  SafeArea(
                    child: Container(
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
                                  Text('Setting')
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.black,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [

                                Container(
                                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: ListTile(
                                      leading: Image(
                                        image: AssetImage(changeLanguage),
                                        width: 20,
                                        height: 20,
                                      ),
                                      title: Text('Language Change'),
                                      onTap: () {
                                        showLanguageAlertDialog(context);
                                      }),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
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
                                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
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
                                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
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
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


                ]
            )
        ),
      ),
    );
  }
}

showLanguageAlertDialog(BuildContext context) {
  // set up the buttons
  Widget englishButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 240,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'English',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Fluttertoast.showToast(
        msg: "Language Changed to English",
      );
    },
  );

  Widget frenchButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 240,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'French',
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Fluttertoast.showToast(
        msg: "Language Changed to French",
      );

      //Get.toNamed(Routes.signInView);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Choose your language",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    actions: [
      Center(
        child: Column(
          children: [
            englishButton,

            frenchButton,
          ],
        ),
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showLogOutAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      //Get.toNamed(Routes.signUpStepTwo);
    },
  );

  Widget confirmButton = TextButton(
    child: Row(
      children: [
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
              color: primaryDarkColor,
              border: Border.all(color: primaryDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
          alignment: Alignment.center,
          child: const Text(
            'Yes',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    onPressed: () {
      Navigator.of(context).pop();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (builder) => SignInView()));

      //Get.toNamed(Routes.signInView);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Log Out?",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    content: Text(
      "Do you really want to logout from app",
      style: TextStyle(color: Colors.black, fontSize: 13, height: 1.5),
    ),
    actions: [
      Container(
        child: Row(
          children: [
            Spacer(),
            cancelButton,
            confirmButton,
          ],
        ),
      ),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
