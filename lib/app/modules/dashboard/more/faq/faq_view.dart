import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/core/values/strings.dart';

import 'faq_controller.dart';

class FaqView extends GetView<FaqController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 60,
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
                        Text(
                          'Frequently Asked Question',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
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
                  child: Column(
                    children: [
                      Column(children: [
                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(faqbanner)
                                  )
                              )
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom:10),
                          child: Column(
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(

                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 20,),
                              Divider(color: Colors.grey, height: 1,),
                            ],
                          ),
                        ),
                      ]),


                  Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: Column(
                      children: [
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(color: Colors.grey, height: 1,),
                        ),
                        SizedBox(height: 10,),
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10,),
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10,),
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10,),
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10,),
                        ExpansionTile(
                          iconColor: Colors.black,
                          title: Text(
                            'What is your privacy policy?',
                            style: TextStyle(color: Colors.black),
                          ),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15, left: 15, top: 0, bottom: 5),
                                child: Text(
                                  dummyLoremIpsum,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      height: 1.4),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 0),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),



                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_buildExpandableContent() {
  List<Widget> columnContent = [];

  columnContent.add(
    new ListTile(
      title: new Text(
        'Title1',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );
  columnContent.add(
    new ListTile(
      title: new Text(
        'Title2',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );
  columnContent.add(
    new ListTile(
      title: new Text(
        'Title3',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );
  columnContent.add(
    new ListTile(
      title: new Text(
        'Title4',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );
  columnContent.add(
    new ListTile(
      title: new Text(
        'Title5',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );
  columnContent.add(
    new ListTile(
      title: new Text(
        'Title6',
        style: new TextStyle(fontSize: 18.0),
      ),
      leading: new Icon(Icons.directions_car),
    ),
  );

  return columnContent;
}
