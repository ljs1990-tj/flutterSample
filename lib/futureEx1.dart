import 'package:flutter/material.dart';

class FutureEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : FutureObj()
    );
  }
}

class FutureObj extends StatefulWidget {
  @override
  State<FutureObj> createState() => _FutureObjState();
}

class _FutureObjState extends State<FutureObj> {
  String _txt = "플러터 안녕!";

  Future<String> callData() async {
    await Future.delayed(Duration(seconds: 2));
    return "(2초뒤 실행) 플러터 바이!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Example"),),
      body : Center(
        child: Column(
          children: [
            Text(_txt),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () async {
                  String str = await callData();
                  setState(() {
                    _txt = str;
                  });
                },
                child: Text("클릭!")
            )
          ],
        ),
      )
    );
  }
}
