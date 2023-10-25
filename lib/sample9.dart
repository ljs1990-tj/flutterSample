import 'package:flutter/material.dart';

import 'myPage.dart';

class Sample9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : "중고",
        home : ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("중고거래"),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body : ListView(
        children: [
          _listItem(context, "img1.jpg", "레노버 노트북 판매", "인천 부평구", "990,000원", "2초전"),
          _listItem(context, "img2.jpg", "갤 S23 급처", "서울 구로구", "300,000원", "1분전"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 70,
            color : Color.fromRGBO(180, 180, 180, 0.7),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.category),
                Icon(Icons.post_add),
                Icon(Icons.image),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPage()),
                    );
                  },
                  child: Icon(Icons.person),
                )
              ],
            )
        ),
      ),
    );
  }
  Widget _listItem(BuildContext context, String img, String title, String location, String price, String timeAgo){
    return Container(
      height: 80,
      child: ListTile(
        leading: Image.asset(img),
        title: Text(title),
        subtitle: Text(location),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price),
            Text(timeAgo),
          ],
        ),
        onTap: (){
          // ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text("$title 호출!!"))
          // );
          _showDialog(context, title);
        },
      ),
    );
  }
  _showDialog(BuildContext context, String title){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: Text(title),
            actions: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                    print("확인버튼 클릭했다.");
                  },
                  child: Text("확인!")
              ),
              ElevatedButton(onPressed: (){}, child: Text("취소"))
            ],
          );
        }
    );
  }
}

