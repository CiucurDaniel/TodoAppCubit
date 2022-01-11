import 'package:flutter/material.dart';
import 'package:flutter_todo_app/data/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key, required this.tasks}) : super(key: key);

  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Do Grocery for the party'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Call Jim'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Finish homework'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Buy new light bulb'),
              value: false,
              onChanged: replaceMe,
            ),CheckboxListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Do Grocery for the party'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Call Jim'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Finish homework'),
              value: false,
              onChanged: replaceMe,
            ),
            const SizedBox(
              height: 8.0,
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              tileColor: Colors.white,
              title: const Text('Buy new light bulb'),
              value: false,
              onChanged: replaceMe,
            ),
          ],
        ),
      ),
    );
  }
  void replaceMe(bool? hi) {
    print('hi');
  }

}
