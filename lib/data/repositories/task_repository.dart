import 'package:flutter_todo_app/data/data_sources/local/sqlite_datasource.dart';
import 'package:flutter_todo_app/data/models/task.dart';

import 'tasks_repository_interface.dart';

class TaskRepository implements ITaskRepository {
  final SqliteDataSource localStorage;

  TaskRepository({required this.localStorage});

  @override
  Future<void> addTask(Task t) async {
    localStorage.add(t);
  }

  @override
  Future<void> deleteTask(int id) async {
    localStorage.remove(id);
  }

  @override
  Future<void> editTask(Task t) async {
    localStorage.update(t);
  }

  @override
  Future<Task> getTaskById(int id) async {
    var tasks = await localStorage.getTasks();
    return tasks.first;
  }

  @override
  Future<void> markComplete() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Future<List<Task>> getAllTasks() async {
    var tasks = await localStorage.getTasks();
    return tasks;
  }
}
