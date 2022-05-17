import 'package:recommend_you/app/core/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Util {
  static String getTimeDuration(String comTime) {
    var nowTime = DateTime.now();
    var compareTime = DateTime.parse(comTime);
    if (nowTime.isAfter(compareTime)) {
      if (nowTime.year == compareTime.year) {
        if (nowTime.month == compareTime.month) {
          if (nowTime.day == compareTime.day) {
            if (nowTime.hour == compareTime.hour) {
              if (nowTime.minute == compareTime.minute) {
                return '片刻之间';
              }
              return (nowTime.minute - compareTime.minute).toString() + '分钟前';
            }
            return (nowTime.hour - compareTime.hour).toString() + '小时前';
          }
          return (nowTime.day - compareTime.day).toString() + '天前';
        }
        return (nowTime.month - compareTime.month).toString() + '月前';
      }
      return (nowTime.year - compareTime.year).toString() + '年前';
    }
    return 'time error';
  }

  static String getDateInMMMMYYYY(_date) {
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
    var inputDate = inputFormat.parse(_date);
    var outputFormat = DateFormat('MMMM yyyy');
    return outputFormat.format(inputDate);
  }

  static calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  static showCreateStoreDialog() {
    Get.defaultDialog(
        title: 'Create Store',
        titleStyle: const TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        barrierDismissible: true,
        radius: 5.0,
        content: Column(children: [
          Container(
              margin: const EdgeInsets.only(left: 5.0, top: 10.0, right: 5.0, bottom: 0.0),
              child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(color: Colors.grey))),
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                  margin: const EdgeInsets.only(left: 0.0, top: 15.0, right: 5.0, bottom: 0.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [Text(title, style: TextStyle(color: Colors.black))]))),
          GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                  margin: const EdgeInsets.only(left: 0.0, top: 10.0, right: 5.0, bottom: 0.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [Text('I will do it later', style: TextStyle(color: Colors.red))]))),
        ]));
  }

  static getInitials(String bankAccountName) {
    return bankAccountName.isNotEmpty ? bankAccountName.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join() : '';
  }
}
