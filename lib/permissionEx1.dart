import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
class PermissionEx1 extends StatefulWidget {

  @override
  State<PermissionEx1> createState() => _PermissionEx1State();
}

class _PermissionEx1State extends State<PermissionEx1> {

  Future<void> permission() async {
    // Map<Permission, PermissionStatus> statuses
    //   = await [
    //     Permission.location,
    //     Permission.camera,
    //     Permission.phone,
    //     Permission.sms
    //   ].request();

    PermissionStatus status
      = await Permission.location.request();
    if(status.isGranted){
      // 화면에 alert or 텍스트 "위치 접근 허용"
    } else {
      // 화면에 alert "위치 접근 허용 안됨"
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permission();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("Test")),
        body : Center(
          child: Text("test"),
        )
      )
    );
  }
}
