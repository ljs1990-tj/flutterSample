import 'package:flutter/material.dart';

class CheckBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : CheckHome()
    );
  }
}
class CheckHome extends StatefulWidget {
  @override
  _CheckHomeState createState() => _CheckHomeState();
}

class _CheckHomeState extends State<CheckHome> {
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  List<String> _checkedList = [];
  List<String> _imgList = [
    'assets/iu1.jpg',
    'assets/iu2.jpg',
    'assets/logo.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("라디오 버튼 테스트")
      ),
      body : Column(
        children: [
          ListTile(
            title : Text("아이유111"),
            leading: Checkbox(
              value: _checkedList.contains(_imgList[0]),
              onChanged: (value) {
                setState(() {
                  if(value!){
                    _checkedList.add(_imgList[0]);
                  } else {
                    _checkedList.remove(_imgList[0]);
                  }
                });
              },
            ),
            onTap: (){
              setState(() {

              });
            },
          ),
          ListTile(
            title : Text("아이유222"),
            leading: Checkbox(
              value: _checkedList.contains(_imgList[1]),
              onChanged: (value) {
                setState(() {
                  if(value!){
                    _checkedList.add(_imgList[1]);
                  } else {
                    _checkedList.remove(_imgList[1]);
                  }
                });
              },
            ),
            onTap: (){
              setState(() {

              });
            },
          ),
          ListTile(
            title : Text("플러터~~"),
            leading: Checkbox(
              value: _checkedList.contains(_imgList[2]),
              onChanged: (value) {
                setState(() {
                  if(value!){
                    _checkedList.add(_imgList[2]);
                  } else {
                    _checkedList.remove(_imgList[2]);
                  }
                });
              },
            ),
            onTap: (){
              setState(() {

              });
            }
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                  ),
                  itemCount: _checkedList.length,
                  itemBuilder: (context, index){
                    return Image.asset(
                      _checkedList[index],
                      fit : BoxFit.cover
                    );
                  }
              )
          )
        ],
      )
    );
  }
}
