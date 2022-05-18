import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

import 'create_controller.dart';

class CreateView extends GetView<CreateController> {
  final List<String> spinnerItems = [
    'All Categories',
    'Categories 1',
    'Categories 2',
    'Categories 3',
    'Categories 4',
    'Categories 5',
    'Categories 6',
    'Categories 7',
    'Categories 8',
  ];
  String? selectedValue;

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
                  height: 40,
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
                          child: Text('Cancel'),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(profileImage),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Roman',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '*',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  color: Colors.purple),
                              margin: EdgeInsets.only(right: 15, left: 5),
                              child: DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: OutlineInputBorder(

                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Categories',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                                iconSize: 30,
                                buttonHeight: 60,
                                buttonPadding:
                                const EdgeInsets.only(left: 20, right: 10),
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                items: spinnerItems
                                    .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.purple),
                                  ),
                                ))
                                    .toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'RecommendYou';
                                  }
                                },
                                onChanged: (value) {
                                  //Do something when changing the item if you want.
                                },
                                onSaved: (value) {
                                  selectedValue = value.toString();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Option A',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Option B',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              margin: EdgeInsets.only(right: 15, left: 15),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Ask a Question',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 5 * 24,
                  child: TextField(
                    cursorColor: Colors.black,
                    maxLines: 5,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      hintText: "Write a message here.....",
                      hintStyle: TextStyle(color: Colors.black),
                      filled: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return SafeArea(
                                    child: Wrap(
                                      children: [
                                        ListTile(
                                          leading:
                                          Icon(Icons.camera_alt_rounded),
                                          title: Text(
                                            'Add an image or video',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.save_outlined),
                                          title: Text(
                                            'Save for my self',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: () {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              content: Text('Saved'),
                                            ));
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                        ListTile(
                                          title: Text(
                                            'Share :',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          leading: Icon(Icons.share),
                                        ),
                                        Divider(
                                          height: 1,
                                          color: Colors.black,
                                        ),
                                        ListTile(
                                          title: Text('Publically'),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          title: Text(
                                              'With one or more followers'),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          title: Text('Using other apps'),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          title: Text('With helpers'),
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                                color: Colors.purple),
                          ))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
