import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JsonEx1 extends StatefulWidget {
  @override
  State<JsonEx1> createState() => _JsonEx1State();
}

class _JsonEx1State extends State<JsonEx1> {
  
  List<dynamic> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  // async, await
  fetchData() async{
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if(res.statusCode == 200){
      setState(() {
        data = json.decode(res.body);
      });
      print(data);
    } else {
      throw Exception('호출이 안됨~~!!!!!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
      appBar: AppBar(title : Text("json")),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("이름 : " + data[index]['name']),
              subtitle: Text("메일 : " + data[index]['email']),
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('상세정보'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('이름: ${data[index]['name']}'),
                          Text('이메일: ${data[index]['email']}'),
                          Text('핸드폰번호: ${data[index]['phone']}'),
                          Text('홈페이지: ${data[index]['website']}'),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('닫기'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        )
      ),
    );
  }
}
