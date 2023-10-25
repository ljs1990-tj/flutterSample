import 'package:flutter/material.dart';
import 'dbConn.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List<Map<String, dynamic>>? userList;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  _loadUsers() async {
    final db = await DBConn.instance.database;
    final rs = await db.query('tbl_user');
    setState(() {
      userList = rs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입 ㅋㅋ'),
      ),
      // git Test Text
      body: (userList == null)
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount: userList!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${userList![index]['name']}'),
              subtitle: Text('${userList![index]['phone']}'),
            );
          }),
    );
  }
}
