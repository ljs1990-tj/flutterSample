import 'package:flutter/material.dart';

class StackEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("스택 예제1")
      ),
      body : Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image : DecorationImage(
                  image: AssetImage('assets/iu1.jpg'),
                  fit : BoxFit.cover
                )
              ),
            ),
            Positioned(
              top: 80,
              left: 80,
              child: Text(
                  "아이유~~",
                  style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: Icon(
                Icons.favorite,
                color : Colors.red,
                size : 50
              ),
            )
          ],
        ),
      )
    );
  }
}
