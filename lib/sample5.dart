import 'package:flutter/material.dart';

class Sample5 extends StatelessWidget {
  Sample5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(),
        body : ListView(
          children: [
            Container(
              height: 60,
              color : Colors.lightGreen[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    Column(
                      children: [
                        Text('홍길동'),
                        Text('qwer@naver.com'),
                        Text('010-1234-5678'),
                      ],
                    )
                  ],
                )
            ),
            Container(
                height: 60,
                color : Colors.lightGreen[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    Column(
                      children: [
                        Text('홍길동'),
                        Text('qwer@naver.com'),
                        Text('010-1234-5678'),
                      ],
                    )
                  ],
                )
            ),
            Container(
                height: 60,
                color : Colors.lightGreen[500],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    Column(
                      children: [
                        Text('홍길동'),
                        Text('qwer@naver.com'),
                        Text('010-1234-5678'),
                      ],
                    )
                  ],
                )
            )
          ],
        )

      )
    );
  }
}
