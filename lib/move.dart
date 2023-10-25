import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
class MoveEx1 extends StatefulWidget {
  @override
  State<MoveEx1> createState() => _MoveEx1State();
}

class _MoveEx1State extends State<MoveEx1> {
  double _x = 0, _y =0;

  Future<bool> permission() async {
    Map<Permission, PermissionStatus> status =
    await [Permission.location].request(); // [] 권한배열에 권한을 작성
    if (await Permission.location.isGranted) {
      return Future.value(true);
    } else {
      return Future.value(false);
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
    return Scaffold(
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(_x, _y),
              child: Container(
                width: 200, height: 200,
                color: Colors.lightBlue,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _x += 10;
                    _y += 10;
                  });
                },
                child: Text("이동")
            )
          ],
        ),
      )
    );
  }
}
