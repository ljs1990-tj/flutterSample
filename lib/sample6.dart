import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class hhh3 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<hhh3> {
  Database? _database;
  List<Map<String, dynamic>>? _users;  // 사용자 정보 저장용 리스트 추가

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  _initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT)",
        );
      },
      version: 1,
    );
    _loadUsers();
  }

  Future<void> insertUser(String name) async {
    final Map<String, dynamic> user = {
      'name': name,
    };
    await _database!.insert('users', user);
    _loadUsers();  // 사용자 정보 추가 후, 새로운 정보를 다시 불러옴
  }

  _loadUsers() async {
    final List<Map<String, dynamic>> users = await _database!.query('users');
    setState(() {
      _users = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sqflite Example')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              insertUser('John Doe');
            },
            child: Text('Add User'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _users?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_users![index]['name'].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}