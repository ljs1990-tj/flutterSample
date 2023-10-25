import 'package:flutter/material.dart';

class Sample7 extends StatelessWidget {
  Sample7({super.key});
  List<String> path = ['logo.png', 'iu1.jpg', 'iu2.jpg'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("이미지 목록")),
        body : ListView.builder(
            itemCount: path.length,
            itemBuilder: (context, index){
              return Container(
                padding : EdgeInsets.all(10),
                child: Image.asset(path[index]),
              );
            }
        )
      )
    );
  }
}
