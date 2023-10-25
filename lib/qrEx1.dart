import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrEx1 extends StatefulWidget {

  @override
  State<QrEx1> createState() => _QrEx1State();
}

class _QrEx1State extends State<QrEx1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("QR코드 실습")),
        body : Center(
          child: QrImageView( // 4.0.1 버전 이후
            data: 'https://www.naver.com',
            version: QrVersions.auto,
            size : 200
          ),
        )
      )
    );
  }
}
