import 'package:flutter/material.dart';
import 'package:recommend_you/app/core/values/colors.dart';

class TextFieldSearch extends StatelessWidget {
  final TextEditingController textEditingController;
  final ValueChanged<String> onChanged;
  final VoidCallback? onTap, callBackClear, callBackPrefix, callBackSuffix, callBackSearch;
  final isPrefixIconVisible;
  final isSuffixIconVisible;
  final String? hintText;

  TextFieldSearch(
      {required this.textEditingController,
      required this.onChanged,
      this.onTap,
      this.callBackClear,
      this.isPrefixIconVisible = false,
      this.isSuffixIconVisible = false,
      this.callBackPrefix,
      this.callBackSuffix,
      this.callBackSearch,
      this.hintText = 'Search'});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.0,
        margin: EdgeInsets.all(5.0),
        child: TextField(
            controller: textEditingController,
            onChanged: onChanged,
            onTap: onTap,
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(color: manateeColor, fontSize: 14.0),
            decoration: InputDecoration(
                border: InputBorder.none,
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                prefixIcon: isPrefixIconVisible ? IconButton(icon: Icon(Icons.search, size: 20, color: manateeColor), onPressed: callBackPrefix) : null,
                suffixIcon: isSuffixIconVisible ? IconButton(icon: Icon(Icons.close, size: 22, color: manateeColor), onPressed: callBackSuffix) : null,
                enabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(5.0)), borderSide: BorderSide(color: Colors.grey.withOpacity(0.1))),
                focusedBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(const Radius.circular(5.0)), borderSide: BorderSide(color: Colors.grey.withOpacity(0.1))),
                filled: true,
                hintStyle: TextStyle(fontSize: 14.0, color: manateeColor, textBaseline: TextBaseline.alphabetic),
                hintText: hintText,
                fillColor: Colors.grey.withOpacity(0.1))));
  }
}
