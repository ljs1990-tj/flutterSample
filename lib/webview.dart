import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : WebViewObj()
    );
  }
}

class WebViewObj extends StatefulWidget {
  @override
  State<WebViewObj> createState() => _WebViewObjState();
}

class _WebViewObjState extends State<WebViewObj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("안녕!")),
      body : WebView(
        initialUrl: 'https://www.google.com',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}


