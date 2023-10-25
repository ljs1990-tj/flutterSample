import 'dart:math';
import 'package:flutter/material.dart';

class RandomGame extends StatefulWidget {
  @override
  State<RandomGame> createState() => _RanState();
}

class _RanState extends State<RandomGame> {
  Random _random = Random();
  List<Widget> list = [];
  int idx = 0;
  void _remove(int index){
    if(index == idx){
      idx++;
      setState(() {
        list.removeAt(0);
      });
    }
    if(list.length == 0) idx = 0;
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    if(list.length == 0){
      for (int index = 0; index < 10; index++) {
        list.add(
          Positioned(
            left: _random.nextDouble() * (maxWidth - 50),
            top: _random.nextDouble() * (maxHeight - 50),
            child: GestureDetector(
              onTap: (){
                _remove(index);
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
    }
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: list,
        ),
      ),
    );
  }
}