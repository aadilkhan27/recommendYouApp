import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:recommend_you/app/data/services/configs/service.dart';

class CustomTffWidget extends Container {
  final config = Get.find<AppConfigService>();

  final Function(String s)? onChanged;
  final Function(String s)? onSaved;
  final Function(String s)? onValidate;
  final TextEditingController? controller;

  final size,
      initialValue,
      hintText,
      hintTextColor,
      hintFontSize,
      hintFontWeight,
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

  CustomTffWidget(
      {this.size,
      this.controller,
      this.initialValue,
      this.hintText,
      this.hintTextColor,
      this.hintFontSize,
      this.hintFontWeight = false,
      this.counterText,
      this.borderColor,
      this.showBorder = false,
      this.keyboardType,
      this.textColor,
      this.fontSize,
      this.fontWeight = false,
      this.enabled = true,
      this.maxLength,
      this.obscure = false,
      this.maxLines,
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
              hintText: this.hintText,
              hintStyle: TextStyle(
                  color: this.hintTextColor, fontSize: this.hintFontSize, fontWeight: this.hintFontWeight ? FontWeight.bold : FontWeight.normal),
              counterText: this.counterText,
              focusedBorder: this.showBorder ? UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor)) : InputBorder.none,
              enabledBorder: this.showBorder ? UnderlineInputBorder(borderSide: BorderSide(color: this.borderColor)) : InputBorder.none),
          keyboardType: this.keyboardType,
          inputFormatters: [
            this.keyboardType == TextInputType.number ? FilteringTextInputFormatter.digitsOnly : FilteringTextInputFormatter.deny(RegExp(r'[/\\]'))
          ],
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
