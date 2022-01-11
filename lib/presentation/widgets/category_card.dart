import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final int numberOfTasks;

  // TODO: The Linear progress indicator is hardcoded at 0.7 this must be implemented

  const CategoryCard(
      {Key? key, required this.category, required this.numberOfTasks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('$numberOfTasks tasks'),
            const SizedBox(height: 16.0),
            Text(
              category,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const LinearProgressIndicator(
              value: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}
