import 'package:flutter/material.dart';

class CustomButtonWidget extends Container {
  // final config = Get.find<AppConfigService>();

  final callback, backgroundColor, width, text, textColor, iconColor, iconBackgroundColor;

  CustomButtonWidget({this.callback, this.backgroundColor, this.width, this.text, this.textColor, this.iconColor, this.iconBackgroundColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.only(left: 10.0),
        onPressed: () => this.callback(),
        color: this.backgroundColor,
        shape: RoundedRectangleBorder(side: BorderSide(color: this.backgroundColor!), borderRadius: BorderRadius.all(Radius.circular(3.0))),
        minWidth: this.width,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(this.text, style: TextStyle(color: this.textColor, fontSize: 16.0)),
          RawMaterialButton(
              elevation: 0.0,
              child: Icon(Icons.keyboard_arrow_right_rounded, color: this.iconColor, size: 18.0),
              onPressed: () => this.callback(),
              constraints: BoxConstraints.tightFor(width: 26.0, height: 26.0),
              shape: CircleBorder(),
              fillColor: this.iconBackgroundColor)
        ]));
  }
}
