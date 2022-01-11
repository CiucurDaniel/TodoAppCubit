import 'package:flutter_todo_app/data/models/task.dart';

abstract class ITaskRepository {
  Future<List<Task>> getAllTasks();

  Future<void> addTask(Task t);

  Future<Task> getTaskById(int id);

  Future<void> editTask(Task t);

  Future<void> deleteTask(int id);

  Future<void> markComplete();
}