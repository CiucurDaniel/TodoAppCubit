import 'dart:io'; // for Directory
import 'package:path/path.dart'; // for join method

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart'; // for getApplicationDirectory cross-platform

// TODO: You do not instantiate the call, you do not call it
class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _db;

  Future<Database> getDb() async {
    return _db ??= await _initDb();
  }

  Future<Database> _initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'tasks.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE tasks(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT NOT NULL,
          description TEXT NOT NULL,
          status TEXT NOT NULL
      )
      ''');
  }
}
