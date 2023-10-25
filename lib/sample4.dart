import 'package:flutter/material.dart';

class Sample4 extends StatelessWidget {
  const Sample4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text('명함 UI'),
        ),
        body : Center(
          child: Container(
            padding : EdgeInsets.all(20),
            width: 300, height: 200,
            decoration: BoxDecoration(
              border : Border.all(color : Colors.grey),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.person),
                Text('홍길동', style : TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('사장'),
                Text('qwer@naver.com'),
                Text('010-1234-5678'),
              ],
            ),
          ),
        )
      )
    );
  }
}
