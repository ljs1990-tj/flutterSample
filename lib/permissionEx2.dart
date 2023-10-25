import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionRequestScreen extends StatefulWidget {
  @override
  _PermissionRequestScreenState createState() => _PermissionRequestScreenState();
}

class _PermissionRequestScreenState extends State<PermissionRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Permission Test')),
      body: Center(
        child: ElevatedButton(
          child: Text('Request Camera Permission'),
          onPressed: () async {
            PermissionStatus status = await Permission.camera.request();
            if (status.isGranted) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Permission Granted'),
                    content: Text('You have granted the camera permission.'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  );
                },
              );
            }
            // 이외의 상황 (거부, 영구적 거부 등)에 대한 처리도 추가할 수 있습니다.
          },
        ),
      ),
    );
  }
}
