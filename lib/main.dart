import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/cubits/task_cubit.dart';
import 'package:flutter_todo_app/data/repositories/mock_task_repository.dart';
import 'presentation/screens/all_screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => MockTaskRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TaskCubit>(
            create: (context) =>
                TaskCubit(taskRepository: context.read<MockTaskRepository>()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Todo App',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(240, 244, 245, 1),
            primarySwatch: Colors.blue,
          ),
          home: const HomePage(title: 'Flutter Todo App'),
        ),
      ),
    );
  }
}
