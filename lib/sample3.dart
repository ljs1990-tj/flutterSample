import 'package:flutter/material.dart';

class Sample3 extends StatefulWidget {
  const Sample3({super.key});

  @override
  State<Sample3> createState() => _MyAppState();
}

class _MyAppState extends State<Sample3> {
  var txt = "마지막시간";
  var color = Colors.red;
  var _align = Alignment.center;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
       body : Align(
         alignment: _align,
         child: Container(
           height: 200, width: 200,
           child: ElevatedButton(
             child : Text(txt, style : TextStyle(fontSize: 25)),
             style : ButtonStyle(
               backgroundColor: MaterialStateProperty.all(color)
             ),
             onPressed: (){
               setState(() {
                 // txt = (txt == "마지막시간") ? "오늘까지자소서" : "마지막시간";
                 if(txt == '마지막시간'){
                   txt = '오늘까지자소서';
                   color = Colors.blue;
                   _align = Alignment.topCenter;
                 } else {
                   txt = '마지막시간';
                   color = Colors.red;
                   _align = Alignment.center;
                 }
               });
             },
           ),
         ),
       )
      )
    );
  }
}
