import 'package:flutter/material.dart';

class Sample2 extends StatefulWidget {
  String txt = "";
  Sample2(this.txt, {super.key});

  @override
  State<Sample2> createState() => _MyAppState(txt);
}

class _MyAppState extends State<Sample2> {
  var flg = false;
  var txt2 = "";
  _MyAppState(this.txt2);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : 'test123',
        home : Scaffold(
            body : Center(
                child : Switch(value : flg, onChanged: (value){
                  setState(() {
                    print(txt2);
                    flg = value;
                  });
                })
            )
        )
    );
  }
}
