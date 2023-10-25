import 'package:flutter/material.dart';

class DetectorEx1 extends StatefulWidget {
   @override
  State<DetectorEx1> createState() => _DetectorEx1State();
}

class _DetectorEx1State extends State<DetectorEx1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: GestureDetector(
          onTap : (){
            print("한번 눌렸다");
          },
          onDoubleTap: (){
            print("두번 눌렸다");
          },
          onLongPress: (){
            print("그만 눌러라");
          },
          child: Container(
            width: 250, height: 250,
            color: Colors.lightBlue,
          ),
        ),
      )
    );
  }
}
