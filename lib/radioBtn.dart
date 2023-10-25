import 'package:flutter/material.dart';

class RadioBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : RadioHome()
    );
  }
}

class RadioHome extends StatefulWidget {
  @override
  _RadioHomeState createState() => _RadioHomeState();
}

class _RadioHomeState extends State<RadioHome> {
  int? _selectValue = 1;

  List<String> titles = ["아이유111", "아이유222", "플러터~~"];
  List<String> images = ["assets/iu1.jpg", "assets/iu2.jpg", "assets/logo.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라디오 버튼 테스트"),
      ),
      body: Column(
        children: List.generate(titles.length, (index) {
          return _buildListTile(index);
        }),
      ),
    );
  }

  Widget _buildListTile(int index) {
    return ListTile(
      title: Text(titles[index]),
      leading: Radio(
        value: index + 1,
        groupValue: _selectValue,
        onChanged: (value) {
          setState(() {
            _selectValue = value;
            _displayImage(images[index]);
          });
        },
      ),
      onTap: () {
        setState(() {
          _selectValue = index + 1;
          _displayImage(images[index]);
        });
      },
    );
  }

  void _displayImage(String imagePath) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Image.asset(imagePath),
        );
      },
    );
  }
}
