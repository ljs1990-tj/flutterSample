import 'package:flutter/material.dart';
import 'dart:math';

class RandomGame2 extends StatefulWidget {
  @override
  State<RandomGame2> createState() => _RandomGameState();
}

class _RandomGameState extends State<RandomGame2> {
  Random _random = Random();
  List<Widget> positionedWidgets = [];

  Offset _generateRandomPosition(double maxWidth, double maxHeight) {
    double x = _random.nextDouble() * (maxWidth - 50);
    double y = _random.nextDouble() * (maxHeight - 50);
    return Offset(x, y);
  }

  void _removeWidget(int index) {
    setState(() {
      positionedWidgets.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    for (int index = 0; index < 10; index++) {
      Offset position = _generateRandomPosition(maxWidth, maxHeight);

      positionedWidgets.add(
        Positioned(
          left: position.dx,
          top: position.dy,
          child: GestureDetector(
            onTap: () {
              _removeWidget(index);
            },
            child: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  (index + 1).toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('RandomGame'),
      ),
      body: Stack(
        children: positionedWidgets,
      ),
    );
  }
}