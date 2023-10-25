import 'package:flutter/material.dart';

class TabBarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title : Text("탭바 실습"),
            bottom: TabBar(
              tabs: [
                Tab(text : '아이유 11'),
                Tab(text : '아이유 22'),
                Tab(text : '플러터'),
              ],
            ),
          ),
          body : TabBarView(
            children: [
              Center(child: Image.asset('assets/iu1.jpg')),
              Center(child: Image.asset('assets/iu2.jpg')),
              Center(child: Image.asset('assets/logo.png')),
            ],

          )
        ),

      )
    );
  }
}
