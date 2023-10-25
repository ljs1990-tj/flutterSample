import 'package:flutter/material.dart';

class Sample1 extends StatelessWidget {
  String txt = "";
  Sample1(this.txt, {super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.menu),
            title : Text('플러터 !!'),
            actions: [Icon(Icons.chevron_left), Icon(Icons.arrow_circle_left_outlined), Icon(Icons.abc_sharp)],
        ),
        body : Align(
          alignment: Alignment.topCenter,
          child: Container(
            child: ElevatedButton(
              child: Text(txt),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            width: double.infinity, height: 100,
            margin : EdgeInsets.all(20),
            padding : EdgeInsets.fromLTRB(30, 20, 0, 0),
            decoration: BoxDecoration(
              // color : Colors.purple,
              border : Border.all(color : Colors.green, width: 5),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
        // Center(
        //     child: Text('안녕!!', style: TextStyle(fontSize: 100, color : Colors.red),)
        // ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50,
            color: Color.fromRGBO(200, 200, 200, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.chevron_left),
                Icon(Icons.camera_alt),
                Icon(Icons.home)
              ],
            ),
          ),
        ),
      )
    );
  }
}


