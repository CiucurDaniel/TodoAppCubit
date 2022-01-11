import 'package:flutter/material.dart';
import 'package:flutter_todo_app/data/models/task.dart';

import 'tasks_repository_interface.dart';

class MockTaskRepository implements ITaskRepository {
  List<Task> mockTasksList = [
    Task(
      id: 1,
      name: 'Call Jim',
      description: 'Call Jim',
      status: Status.done,
    ),
    Task(
      id: 2,
      name: 'Finish homework',
      description: 'Finish homework',
      status: Status.inProgress,
    ),
    Task(
      id: 3,
      name: 'Buy new light bulb',
      description: 'Buy new light bulb',
      status: Status.inProgress,
    ),
    Task(
      id: 4,
      name: 'Do Grocery for the party',
      description: 'Do Grocery for the party',
      status: Status.done,
    ),
    Task(
      id: 5,
      name: 'Buy MacBook',
      description: 'Buy MacBook',
      status: Status.inProgress,
    ),
  ];

  @override
  Future<void> addTask(Task t) async {
    await Future.delayed(const Duration(seconds: 1));
    t.id ??= 34;
    mockTasksList.add(t);
  }

  @override
  Future<void> deleteTask(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: Implement

  }

  @override
  Future<void> editTask(Task t) async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: Implement
  }

  @override
  Future<Task> getTaskById(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: Implement correctly
    return mockTasksList.first;
  }

  @override
  Future<void> markComplete() async {
    await Future.delayed(const Duration(seconds: 1));
    // TODO: Implement and add Task as parameter
  }

  @override
  Future<List<Task>> getAllTasks() async {
    await Future.delayed(const Duration(seconds: 2));
    return mockTasksList;
  }
}
