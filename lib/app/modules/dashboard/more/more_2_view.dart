


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
import 'package:recommend_you/app/modules/dashboard/more/termscondition/terms_condition_view.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/termscondition_binding.dart';

import '../../../core/values/colors.dart';
import '../../../core/values/strings.dart';
import '../../../routes/pages.dart';
import '../../login/signin/sign_in_view.dart';
import 'deletaccount/delete_account_view.dart';
import 'faq/faq_view.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'more_controller.dart';

class More2View extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  //showOptionMenu(context);
          )

            ],
          )


        )
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

showOptionMenu(BuildContext buildContext) {
  showModalBottomSheet(
      context: buildContext,
      builder: (context) {
        return Wrap(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
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

          ],
        );
      });
}
