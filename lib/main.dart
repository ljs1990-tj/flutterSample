import 'package:flutter/material.dart';
import 'dbConn.dart';
import 'newPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '회원 가입',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _idController = TextEditingController();
  final _pwdController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  Future<void> _addUser() async {
    final db = await DBConn.instance.database;
    await db.insert('tbl_user', {
      'id': _idController.text,
      'pwd': _pwdController.text,
      'name': _nameController.text,
      'phone': _phoneController.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("회원 가입")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _idController, decoration: InputDecoration(labelText: 'ID', border: OutlineInputBorder())),
            SizedBox(height: 16),
            TextField(controller: _pwdController, decoration: InputDecoration(labelText: 'PWD', border: OutlineInputBorder())),
            SizedBox(height: 16),
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder())),
            SizedBox(height: 16),
            TextField(controller: _phoneController, decoration: InputDecoration(labelText: 'Phone', border: OutlineInputBorder())),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                await _addUser();
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
              },
              child: Text('확인'),
            ),
          ],
        ),
      ),
    );
  }
}
