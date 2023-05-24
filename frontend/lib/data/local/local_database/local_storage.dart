import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> openDB() async {
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'local_database.db'),
    onCreate: (db, version) {
      return db.execute(
        '''CREATE TABLE user(
            id TEXT PRIMARY KEY, 
            firstName TEXT, 
            lastName TEXT, 
            email TEXT, 
            password TEXT, 
            phoneNumber TEXT, 
            createdAt TEXT
          )
        ''',
      );
    },
    version: 1,
  );
  return database;
}

// insert user
Future<void> insertUser(Map<String, dynamic> user) async {
  final Database db = await openDB();
  await db.insert(
    'user',
    user,
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// get user. there will only be one user
Future<Map<String, dynamic>> getUser() async {
  final Database db = await openDB();
  final List<Map<String, dynamic>> maps = await db.query('user');

  // we return only one since there will only be one user (the current logged in user)
  return maps.first;
}

// get user id
Future<String> getUserId() async {
  final Database db = await openDB();
  final List<Map<String, dynamic>> maps = await db.query('user');
  return maps.first['id'];
}

// delete user
Future<void> deleteUser() async {
  final db = await openDB();
  await db.delete('user');
}

// call this function to check if there is a user logged in
Future<bool> isLoggedIn() async {
  final Database db = await openDB();
  final List<Map<String, dynamic>> maps = await db.query('user');
  return maps.isNotEmpty;
}