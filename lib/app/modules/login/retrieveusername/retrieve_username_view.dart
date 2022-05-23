import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/login/retrieveusername/retrieve_username_controller.dart';
import 'package:recommend_you/app/routes/pages.dart';

class RetrieveUsername extends GetView<RetrieveUsernameController> {
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
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            margin: EdgeInsets.only(left: 30, top: 20),
                            child: InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child:  SvgPicture.asset(
                                icLeftArrow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Image(
                        image: AssetImage(bgSplash),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Retrieve your username',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your username is',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'alexgender_arya',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,left: 0,bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40, left: 10, right: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
//do something
                              Get.toNamed(Routes.signInView);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(45),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: primaryDarkColor,
                                  border: Border.all(color: primaryDarkColor),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                              alignment: Alignment.center,
                              child: const Text(
                                'CONTINUE TO LOGIN',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
