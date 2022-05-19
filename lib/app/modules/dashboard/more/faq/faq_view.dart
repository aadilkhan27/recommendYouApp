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
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: SvgPicture.asset(
                            icLeftArrow,
                          ),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Frequently Asked Question',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                Container(
                  child: Expanded(
                    child: Column(
                      children: [
                        ExpansionTile(
                          title: Text('What is your privacy policy?',style: TextStyle(color: Colors.black),),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyLoremIpsum,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('What is your privacy policy?',style: TextStyle(color: Colors.black),),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyLoremIpsum,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('What is your privacy policy?',style: TextStyle(color: Colors.black),),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyLoremIpsum,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('What is your privacy policy?',style: TextStyle(color: Colors.black),),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyLoremIpsum,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text('What is your privacy policy?',style: TextStyle(color: Colors.black),),
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyLoremIpsum,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
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
