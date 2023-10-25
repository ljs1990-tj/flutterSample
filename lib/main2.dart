import 'package:first1/radioBtn.dart';
import 'package:first1/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'checkBtn.dart';
import 'naverTest.dart';

void main() {
  runApp(MaterialApp(
    title: 'Home',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("메뉴!"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/iu1.jpg'), // 프로필 이미지 설정
                    ),
                    SizedBox(height: 10),
                    Text(
                      '아이유',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'iu@naver.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(color : Colors.lightBlue[200]),
            ),
            ListTile(
              title : Text("Radio Ex"),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RadioBtn())
                );
              },
            ),
            ListTile(
              title : Text("NaverTest"),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NaverTest())
                );
              },
            ),
            ListTile(
              title : Text("TabBar Ex"),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TabBarEx())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
