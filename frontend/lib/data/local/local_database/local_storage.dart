import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDatabase {
  static final LocalDatabase _instance = LocalDatabase._init();

  static Database? _database;

  LocalDatabase._init(){
    _initDB('local_database_.db');
  }

  static LocalDatabase get getInstance => _instance;

  Future<Database> get database async {
    if (_database != null && _database!.isOpen) {
      return _database!;
    }

    _database = await _initDB('local_database_.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE IF NOT EXISTS user(
      id STRING PRIMARY KEY,
      firstName TEXT,
      lastName TEXT,
      email TEXT,
      password TEXT
    )
    ''');
  }

  Future<int> insert(String table, Map<String, Object?> data) async {
    final db = await _instance.database;
    return await db.insert(table, data);
  }

  // get user, there is only one user
  Future<Map<String, Object?>> getUser() async {
    final db = await _instance.database;
    final result = await db.query('user');
    return result.first;
  }

  // remove user, there is only one user
  Future<int> removeUser(String table) async {
    final db = await _instance.database;
    return await db.delete(table);
  }

  // get user id
  Future<String> getUserId() async {
    final db = await _instance.database;
    final result = await db.query('user');
    return result.first['id'].toString();
  }
}
