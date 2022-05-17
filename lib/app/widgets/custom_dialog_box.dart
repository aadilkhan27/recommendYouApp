import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:recommend_you/app/core/values/strings.dart';
import 'package:recommend_you/utility/constants.dart';

class CustomDialogBox extends StatefulWidget {
  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    privacyPolicy,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),
                  )),
              const SizedBox(
                height: 15,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    dummyLoremIpsum,
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: primaryDarkColor,
                        border: Border.all(color: primaryDarkColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    alignment: Alignment.center,
                    child: const Text(
                      confirm,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
