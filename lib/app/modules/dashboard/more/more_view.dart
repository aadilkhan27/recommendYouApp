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

import '../../../routes/pages.dart';
import 'deletaccount/delete_account_view.dart';

class MoreView extends GetView<MoreController> {
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
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                     /* SvgPicture.asset(
                        icLeftArrow,
                        semanticsLabel: 'logo',
                      ),*/
                      SizedBox(
                        width: 10,
                      ),
                      Text('Settings')
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 1,
              ),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                /*Container(
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
                */

                        Container(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: ListTile(
                              leading: Image(image: AssetImage(changeLanguage), width: 20, height: 20,),
                            title: Text('Language Change'),
                            onTap: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangeLangugaeView()));
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'English ',
                                                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text(
                                                'French ',
                                                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ]
                                  );
                                },
                              );
                            }
                        ),
                        ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(contactUS), width: 20, height: 20,),
                    title: Text('Change contact details'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangeContactView()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(changePassword), width: 20, height: 20,),
                    title: Text('Change Password'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ChangePasswordView()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(deleteAcc), width: 20, height: 20,),
                    title: Text('Delete Account'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => DeleteAccountView()));
                    },
                    //TODO
                    /*showModalBottomSheet<dynamic>(
                      isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return SafeArea(
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35.0,left: 35,right: 35),
                                    child: Text(
                                      'We are sorry you want to leave. Can you tell us why? We would like to learn from any mistakes we may have made.',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('The content is not interesting'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('There are too much spam'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('I don\'t trust this platform'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  CheckboxListTile(
                                    value: false,
                                    onChanged: (value) {},
                                    title: Text('Other'),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Align(
                                      child: Text(
                                        'Please give us additional explanation',
                                        style: TextStyle(color: Colors.grey),
                                        textAlign: TextAlign.start,
                                      ),
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 5*24,
                                    child: TextField(
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        hintText: "Enter a message",
                                        fillColor: Colors.grey[300],
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 40,
                                      width: 100,
                                      margin: EdgeInsets.only(right: 30),
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          border: Border.all(color: Colors.purple),
                                          borderRadius:
                                          const BorderRadius.all(Radius.circular(5))),
                                      alignment: Alignment.center,
                                      child:  Text(
                                        'SUBMIT',
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },*/
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(termsConditions), width: 20, height: 20,),
                    title: Text('Terms and Conditions'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => TermsConditionView()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(privacy), width: 20, height: 20,),
                    title: Text('Privacy Policy'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => PrivacyPolicyView()));
                    },
                  ),
                ),
                /*Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('FAQ'),
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (builder) => ChangePasswordView()));
                    },
                  ),
                ),*/
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ListTile(
                    leading: Image(image: AssetImage(contactUS), width: 20, height: 20,),
                    title: Text('Contact Us'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                    },
                  ),
                ),
                        Container(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: ListTile(
                            leading:Image(image: AssetImage(logout), width: 20, height: 20,),
                            title: Text('Log Out'),
                            onTap: () {
                             // Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                            },
                          ),
                        ),



              ])))
            ],
          ),
        ),
      ),
    );
  }
}

/*
*  InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (builder) => ContactUsView()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 15.0, right: 15.0),
                              child: new Row(
                                children: <Widget>[
                                  new Container(
                                    child: new Image.asset(
                                      termsConditions,
                                      height: 60.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  new Container(
                                    child: new Text('long information text'),
                                  ),
                                ],
                              ),
                            ),
                        )
* */
