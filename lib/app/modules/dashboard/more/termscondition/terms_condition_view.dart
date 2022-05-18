import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/app/modules/dashboard/more/contactus/contact_us_controller.dart';
import 'package:recommend_you/app/modules/dashboard/more/termscondition/termscondition_controller.dart';

class TermsConditionView extends GetView<TermsConditionController> {
  final List<String> countryItems = [
    'India',
    'Russia',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            SafeArea(
              child: Container(
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
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                icLeftArrow,
                                semanticsLabel: 'logo',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Terms & Condition')
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 1,
                      color: Colors.black,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children : [
                          Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: new DecorationImage(
                                      image: AssetImage(image6)))
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscingelit. Non a leo felis, amet adipiscing gravida eget.Montes, amet turpis non neque venenatis in sed.Mauris venenatis sed et, cras. Quisque fermentumfaucibus eget sit et nulla sodales. Telluspellentesque dignissim malesuada in netus odiosed congue. Arcu, tempor ut posuere urna mauris.Est a risus, nisi nisi. Odio at vitae in massa diamhabitant ullamcorper volutpat non.Lorem quam semper felis id quis laoreet pulvinarnunc proin. Ac ultrices imperdiet dictum aliqueteros egestas ultrices. Pellentesque lorem nunc quisposuere posuere. In volutpat",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ]

                      )
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
