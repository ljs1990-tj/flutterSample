import 'package:flutter/material.dart';

class Move2 extends StatefulWidget {
  @override
  State<Move2> createState() => _Move2State();
}

class _Move2State extends State<Move2> {
  double _x = 0, _y = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
          body : Center(
            child: GestureDetector(
              onPanUpdate: (info) {
                setState(() {
                  // 현재 위치에 이동된 위치를 더하여 계속 이동
                  _x += info.delta.dx;
                  _y += info.delta.dy;
                });
              },
              child: Transform.translate(
                offset: Offset(_x, _y),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          )
      )
    );
  }
}
