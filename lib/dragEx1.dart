import 'package:flutter/material.dart';
import 'dart:math';

class DragEx1 extends StatefulWidget {
  @override
  State<DragEx1> createState() => _DragEx1State();
}

class _DragEx1State extends State<DragEx1> {
  double _x = 0, _y = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text("드래그")
        ),
        body : Stack(
          children: [
            Positioned(
              left : _x,
              top : _y,
              child: Draggable(
                feedback: Container(
                  width: 150, height: 150,
                  decoration: BoxDecoration(
                    color : Colors.lightBlue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15)
                  )
                ),
                child: Container(
                  width: 150, height: 150,
                  decoration: BoxDecoration(
                    color : Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                onDraggableCanceled: (velocity, offset){
                  Random ran = Random();
                  int num = ran.nextInt(100);
                  print(num);


                  ran.nextDouble();
                  // 0~100 => 0.0~1.0 * 100
                  // 1~100 => 0.0~1.0 * 99 + 1

                  setState(() {
                    _x = offset.dx;
                    _y = offset.dy - AppBar().preferredSize.height;
                  });
                },
              ),
            )
          ],
        )
      )
    );
  }
}
