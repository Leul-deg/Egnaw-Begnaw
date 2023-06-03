import 'dart:convert';

import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/application/ticket/ticket_get/ticket_get_bloc.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:http/http.dart';


class LocalDatabase {

  LocalDatabase._privateConstructor();  

  static final LocalDatabase instance = LocalDatabase._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'vAddd.db');
    return await openDatabase(path, version: 3, onCreate: _onCreate);
  }

  

  Future _onCreate(Database db, int version) async {

 await db.execute('''
  CREATE TABLE users (
    userId TEXT NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT NOT NULL,
    password TEXT NOT NULL,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    profileImage TEXT
  )
''');
await db.execute('''
  CREATE TABLE events (
    eventId TEXT NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    organizerId TEXT,
    startTime TEXT,
    endTime TEXT,
    place TEXT,
    availableSeats INTEGER,
    ticketsSold INTEGER,
    eventDate TEXT,
    description TEXT ,
    title TEXT
  )
''');
await db.execute('''
  CREATE TABLE tickets (
    ticketId TEXT NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId TEXT NOT NULL,
    eventId TEXT NOT NULL
  )
''');
await db.execute('''
  CREATE TABLE reviews (
    reviewId TEXT NOT NULL,
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId TEXT NOT NULL,
    eventId TEXT NOT NULL,
    reviewText TEXT NOT NULL
  )
''');

  }

  Future<void> insert(String table, Map<String, Object?> data) async {
    
    print("trying to insert the data");
    final Database db = await database;
    await db.transaction(
      (transac) async{
        final batch = transac.batch();
        
      // Map<String, dynamic> data = jsonDecode(jsonData);


        
        batch.insert(table ,  data , conflictAlgorithm: ConflictAlgorithm.replace);
      await batch.commit(noResult: true);
      }
    );

  }
  Future<void> insertEvents(List<dynamic> arr) async {

    print("trying to insert the data");
    final Database db = await database;
    await db.transaction(
      (transac) async{
        final batch = transac.batch();
        
      // Map<String, dynamic> data = jsonDecode(jsonData);
      for (var i = 0; i < arr.length; i++) {
        print(i);
        print("from the top make it drop");
      final Map<String, Object?> cur = arr[i];

        // var cur = arr[i];
        cur.remove('__v');
        var eventId = cur.remove('_id');
        cur.addAll({'eventId': eventId});
        batch.insert('events' ,  cur , conflictAlgorithm: ConflictAlgorithm.replace);
        print(i);
      }
        
      
      try{await batch.commit(noResult: true);
      print("adding to the database was a success");}
      catch(e){
        print(e);
      }
      }
    );

  }

  // get user, there is only one user
  Future<Map<String , Object?>> getUser() async {
    final Database db = await database;
    final List<Map<String, dynamic>> userList = await db.query("users");
    print("getting the user ya bish");
    print(userList);

    return userList[0];
  }
  Future<List<Map<String , Object?>>> getter(String table) async {
    final Database db = await database;
    final List<Map<String, Object?>> userList = await db.query(table);
    print("getting the user ya bish");
    print(userList);

    return userList;
  }
  Future<List<Map<String , Object?>>> getEvent(String eventId) async {
    final Database db = await database;
    final List<Map<String, Object?>> eventList = await db.query('events', where: 'eventId = ?', whereArgs: [eventId]);
    print("getting the user ya bish");
    print(eventList);

    return eventList;
  }

  // remove user, there is only one user
  Future<int> removeUser(String table) async {
     final Database db = await database;

    return await db.delete(table);
  }

  // get user id
  Future<String> getUserId() async {
    final Database db = await database;
    final List<Map<String, dynamic>> userList = await db.query("user");
    return userList[0]['id'].toString();
  }

  Future<void> addTickets(List<dynamic> arr) async {

    print("trying to insert the data");
    final Database db = await database;
    await db.transaction(
      (transac) async{
        final batch = transac.batch();
        
      // Map<String, dynamic> data = jsonDecode(jsonData);
      for (var i = 0; i < arr.length; i++) {
        print(i);
        print("from the top make it drop");
      final Map<String, Object?> cur = arr[i];

        // var cur = arr[i];
        cur.remove('__v');
        var ticketId = cur.remove('_id');
        cur.addAll({'ticketId': ticketId});
        batch.insert('tickets' ,  cur , conflictAlgorithm: ConflictAlgorithm.replace);
        print(i);
      }
        
      
      try{await batch.commit(noResult: true);}
      catch(e){
        print(e);
      }
      }
    );

  }
  Future<void> addReviews(List<dynamic> arr) async {

    print("trying to insert the data");
    final Database db = await database;
    await db.transaction(
      (transac) async{
        final batch = transac.batch();
        
      // Map<String, dynamic> data = jsonDecode(jsonData);
      for (var i = 0; i < arr.length; i++) {
       
      final Map<String, Object?> cur = arr[i];

        // var cur = arr[i];
        cur.remove('__v');
        var reviewId = cur.remove('_id');
        cur.addAll({'reviewId': reviewId});
        batch.insert('reviews' ,  cur , conflictAlgorithm: ConflictAlgorithm.replace);
        print(i);
      }
        
      
      try{await batch.commit(noResult: true);}
      catch(e){
        print(e);
      }
      }
    );

  }

  Future<List<Map<String , Object?>>> getTicketsByUserId(String userId) async {
    final Database db = await database;
    final List<Map<String, Object?>> ticketList = await db.query('tickets', where: 'userId = ?', whereArgs: [userId]);
    print("getting the tickets ya bish");
    print(ticketList);

    return ticketList;
  }

  Future<List<Map<String , Object?>>> getEventsByOrganizerId(String organizerId) async {
    final Database db = await database;
    final List<Map<String, Object?>> eventList = await db.query('events', where: 'organizerId = ?', whereArgs: [organizerId]);
    print(eventList);
    print("getting the tickets ya bish");
    print(eventList);

    return eventList;
  }
  // Future<List<Map<String , Object?>>> getEventsByUserId(String userId) async {
  //   final Database db = await database;
  //   final List<Map<String, Object?>> eventList = await db.query('events', where: 'userId = ?', whereArgs: [userId]);
  //   print("getting the tickets ya bish");
  //   print(eventList);

  //   return eventList;
  // }

  



}





