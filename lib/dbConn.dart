import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBConn {
  static final _databaseName = "test22.db";
  static final _databaseVersion = 1;

  static final table = 'tbl_user';

  static final columnId = 'id';
  static final columnPwd = 'pwd';
  static final columnName = 'name';
  static final columnPhone = 'phone';

  // make this a singleton class
  DBConn._privateConstructor();
  static final DBConn instance = DBConn._privateConstructor();

  // only have a single app-wide reference to the database
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId TEXT PRIMARY KEY,
        $columnPwd TEXT NOT NULL,
        $columnName TEXT NOT NULL,
        $columnPhone TEXT NOT NULL
      )
    ''');
  }
}
