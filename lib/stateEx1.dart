import 'package:flutter/material.dart';

class StateEx1 extends StatefulWidget {
  @override
  State<StateEx1> createState() => _StateEx1State();
}

class _StateEx1State extends State<StateEx1> {
  int _num = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _num = 100;
  }

  @override
  Widget build(BuildContext context) {
    return Text('num is $_num');
  }
}
