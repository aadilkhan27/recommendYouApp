import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/app/modules/dashboard/more/settingpreference/preference_controller.dart';
import 'package:recommend_you/app/widgets/dropdown_button2.dart';

class PreferenceView extends GetView<PreferenceController> {
  final List<String> languageItems = [
    'Language1',
    'Language2',
  ];
  final List<String> numberItems = [
    'Number1',
    'Number2',
  ];
  final List<String> dateItems = [
    'DD-MM-YY',
    'DD-MM-YYYY',
  ];

  final List<String> unitItems = [
    'Unit1',
    'Unit1',
  ];
  final List<String> currencyItems = [
    'Currency1',
    'Currency2',
  ];
  final List<String> timeItems = [
    'Time1',
    'Time2',
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
                        Text('Setting')
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Language',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: languageItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Unit System',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: unitItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Date format',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: dateItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Metric System',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: unitItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Currency',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: currencyItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.purple, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Time Zone',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: SvgPicture.asset(icDownArrow),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: timeItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select country.';
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
        ),
      ),
    );
  }
}
