part of 'task_cubit.dart';

abstract class TaskState extends Equatable {
  const TaskState();
}

class TaskInitial extends TaskState {
  @override
  List<Object> get props => [];
}

class TasksLoading extends TaskState {
  @override
  List<Object?> get props => [];
}

class TasksLoaded extends TaskState {
  const TasksLoaded(this.tasks);

  final List<Task> tasks;

  @override
  List<Object?> get props => [tasks];
}

class TasksLoadedWithError extends TaskState {
  @override
  List<Object?> get props => [];
}
