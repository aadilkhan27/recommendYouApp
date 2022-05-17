import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/data/services/configs/service.dart';

class CustomTfWidget extends Container {
  final config = Get.find<AppConfigService>();

  final Function(String s)? onChanged;
  final TextEditingController? controller;

  final size,
      labelText,
      labelTextColor,
      labelFontSize,
      labelFontWeight,
      counterText,
      borderColor,
      showBorder,
      keyboardType,
      textColor,
      fontSize,
      fontWeight,
      enabled,
      obscure,
      maxLines,
      maxLength,
      showCursor,
      cursorColor;

  CustomTfWidget(
      {this.size,
      this.controller,
      this.labelText,
      this.labelTextColor,
      this.labelFontSize,
      this.labelFontWeight = false,
      this.counterText,
      this.borderColor,
      this.showBorder = false,
      this.keyboardType,
      this.textColor,
      this.fontSize,
      this.fontWeight = false,
      this.enabled = true,
      this.obscure = false,
      this.maxLines,
      this.maxLength,
      this.onChanged,
      this.showCursor = false,
      this.cursorColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.size,
        child: Theme(
            data: new ThemeData(
                inputDecorationTheme: InputDecorationTheme(
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: this.config.getTheme() ? whiteColor : blackColor)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: this.config.getTheme() ? whiteColor : blackColor)),
                    focusColor: this.config.getTheme() ? whiteColor : blackColor)),
            child: TextField(
              controller: this.controller,
              decoration: InputDecoration(
                  labelText: this.labelText,
                  labelStyle: TextStyle(
                      color: this.labelTextColor,
                      fontSize: this.labelFontSize,
                      fontWeight: this.labelFontWeight ? FontWeight.bold : FontWeight.normal),
                  counterText: this.counterText,
                  focusedBorder: this.showBorder ? UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor)) : InputBorder.none,
                  enabledBorder: this.showBorder ? UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor)) : InputBorder.none),
              keyboardType: this.keyboardType,
              inputFormatters: [
                this.keyboardType == TextInputType.number
                    ? FilteringTextInputFormatter.digitsOnly
                    : FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
              ],
              style: TextStyle(color: this.textColor, fontSize: this.fontSize, fontWeight: this.fontWeight ? FontWeight.bold : FontWeight.normal),
              enabled: this.enabled,
              obscureText: this.obscure,
              maxLines: this.maxLines,
              maxLength: this.maxLength,
              onChanged: (v) => this.onChanged!(v),
              showCursor: this.showCursor,
              cursorColor: this.cursorColor,

              /*style: TextStyle(color: this.config.getTheme() ? whiteColor : blackColor),
                controller: this.controller,
                obscureText: this.obscure,
                onChanged: (v) => this.onChanged!(v),
                cursorColor: blackColor,
                keyboardType: this.type,
                decoration: new InputDecoration(
                    labelStyle: TextStyle(color: this.config.getTheme() ? whiteColor : blackColor),
                    suffixIcon: Icon(this.icon, color: this.check ? blackColor : Colors.grey),
                    labelText: this.text)*/
            )));
  }
}
