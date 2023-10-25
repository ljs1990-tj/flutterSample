import 'package:flutter/material.dart';

class zzz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '입력된 텍스트: $_inputText',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: '여기에 텍스트를 입력하세요',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
