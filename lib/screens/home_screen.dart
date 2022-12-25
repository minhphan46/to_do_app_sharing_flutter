import 'package:flutter/material.dart';
import 'package:my_to_do/models/tasks.dart';
import 'package:my_to_do/widgets/my_card.dart';

import '../models/task.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Tasks tasks = Tasks();

  void deleteTask(Task task) {
    tasks.deleteTask(task);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "To Do",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Icon(
              Icons.restore,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // event when press the button
          // add task
        },
        backgroundColor: Colors.white,
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.black, width: 2)),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => MyCard(tasks.listTask[i], deleteTask),
        itemCount: tasks.listTask.length,
      ),
    );
  }
}
