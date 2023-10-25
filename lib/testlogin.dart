import 'package:flutter/material.dart';

class TestLoginEx1 extends StatefulWidget {
  const TestLoginEx1({super.key});

  @override
  State<TestLoginEx1> createState() => _TestLoginEx1State();
}

class _TestLoginEx1State extends State<TestLoginEx1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title : Text("로그인 테스트")),
        body : Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){},
                  child: Text("로그인")
              )
            ],
          ),
        )
      )
    );
  }
}
