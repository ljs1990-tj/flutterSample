import 'package:flutter/material.dart';

class Sample8 extends StatelessWidget {
  Sample8({super.key});
  List<String> path = ['logo.png', 'iu1.jpg', 'iu2.jpg'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("이미지 목록")),
        body : Container(
          padding : EdgeInsets.all(10),
          child : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8

              )
              , itemCount: path.length
              , itemBuilder: (context, index){
                return Container(
                  padding : EdgeInsets.all(10),
                  child: Image.asset(
                      path[index],
                      fit : BoxFit.fill
                  ),
                );
              }
          )
        )
      )
    );
  }
}
