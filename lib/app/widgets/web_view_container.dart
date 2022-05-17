import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend_you/app/core/values/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget{
  final url;
  final pageTitle;
  WebViewContainer(this.url,this.pageTitle);
  @override
  State<WebViewContainer> createState() => _WebViewContainerState(this.url,this.pageTitle);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _pageTitle;
  final _key = UniqueKey();

  _WebViewContainerState(this._url,this._pageTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        backgroundColor: primaryDarkColor,
      ),
      body: Column(
        children: [
          Expanded(child: WebView(
            key: _key,
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: _url,
          ))
        ],
      ),
    );
  }
}