import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo_app/data/models/task.dart';
import 'package:flutter_todo_app/data/repositories/tasks_repository_interface.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit({required this.taskRepository}) : super(TaskInitial());

  final ITaskRepository taskRepository;

  void getTasks() async {
    try {
      emit(TasksLoading());

      final tasks = await taskRepository.getAllTasks();

      emit(TasksLoaded(tasks));
    } catch (e) {
      emit(TasksLoadedWithError());
    }
  }
}
