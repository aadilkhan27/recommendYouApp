import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/data/services/configs/service.dart';

class CustomTffWidget2 extends Container {
  final config = Get.find<AppConfigService>();

  final Function(String s)? onChanged;
  final Function(String s)? onSaved;
  final Function(String s)? onValidate;
  final TextEditingController? controller;

  final size,
      initialValue,
      labelText,
      labelTextColor,
      hintText,
      hintTextColor,
      prefixIcon,
      prefixIconColor,
      prefixText,
      prefixTextColor,
      prefixFontSize,
      prefixFontWeight,
      counterText,
      borderColor,
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

  CustomTffWidget2(
      {this.size,
      this.controller,
      this.initialValue,
      this.labelText,
      this.labelTextColor,
      this.hintText,
      this.hintTextColor,
      this.prefixIcon,
      this.prefixIconColor,
      this.prefixText,
      this.prefixTextColor,
      this.prefixFontSize,
      this.prefixFontWeight = false,
      this.counterText,
      this.borderColor,
      this.keyboardType,
      this.textColor,
      this.fontSize,
      this.fontWeight = false,
      this.enabled = true,
      this.obscure = false,
      this.maxLines,
      this.maxLength,
      this.onChanged,
      this.onSaved,
      this.onValidate,
      this.showCursor = false,
      this.cursorColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.size,
        child: TextFormField(
          controller: this.controller,
          initialValue: this.initialValue,
          decoration: new InputDecoration(
              // contentPadding: EdgeInsets.only(bottom: -10.0),
              labelText: this.labelText,
              labelStyle: TextStyle(color: this.labelTextColor),
              hintText: this.hintText,
              hintStyle: TextStyle(color: this.hintTextColor),
              prefixIcon: Icon(this.prefixIcon, color: this.prefixIconColor),
              prefixText: this.prefixText,
              prefixStyle: TextStyle(
                  color: this.prefixTextColor,
                  fontSize: this.prefixFontSize,
                  fontWeight: this.prefixFontWeight ? FontWeight.bold : FontWeight.normal),
              counterText: this.counterText,
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor)),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor))),
          keyboardType: this.keyboardType,
          style: TextStyle(color: this.textColor, fontSize: this.fontSize, fontWeight: this.fontWeight ? FontWeight.bold : FontWeight.normal),
          enabled: this.enabled,
          obscureText: this.obscure,
          maxLines: this.maxLines,
          maxLength: this.maxLength,
          onChanged: (v) => this.onChanged!(v),
          onSaved: (v) => this.onSaved!(v!),
          validator: (v) => this.onValidate!(v!),
          showCursor: this.showCursor,
          cursorColor: this.cursorColor,
        ));
  }
}
