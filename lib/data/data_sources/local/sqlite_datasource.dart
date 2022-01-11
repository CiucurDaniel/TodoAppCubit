import 'package:flutter_todo_app/data/data_sources/local/database_helper.dart';
import 'package:flutter_todo_app/data/models/task.dart';
import 'package:sqflite/sqflite.dart';

class SqliteDataSource {
  //Database database = DatabaseHelper.instance.getDb();

  SqliteDataSource();

  Future<List<Task>> getTasks() async {
    Database database = await DatabaseHelper.instance.getDb();
    var tasksListAsMaps = await database.query('tasks', orderBy: 'name');
    List<Task> taskList = tasksListAsMaps.isNotEmpty
        ? tasksListAsMaps.map((c) => Task.fromMap(c)).toList()
        : [];
    return taskList;
  }

  Future<int> add(Task task) async {
    Database database = await DatabaseHelper.instance.getDb();
    return await database.insert('groceries', task.toMap());
  }

  Future<int> remove(int id) async {
    Database database = await DatabaseHelper.instance.getDb();
    return await database.delete('groceries', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(Task task) async {
    Database database = await DatabaseHelper.instance.getDb();
    return await database
        .update('tasks', task.toMap(), where: "id = ?", whereArgs: [task.id]);
  }
}
