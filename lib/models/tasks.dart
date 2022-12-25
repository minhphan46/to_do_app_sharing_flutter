import 'package:flutter/material.dart';
import 'task.dart';

class Tasks {
  List<Task> listTask = [
    Task(
      id: 'p1',
      title: "di lam",
      done: false,
      color: Colors.red,
    ),
    Task(
      id: 'p2',
      title: "di an",
      done: false,
      color: Colors.blue,
    ),
    Task(
      id: 'p3',
      title: "di ngu",
      done: false,
      color: Colors.green,
    ),
    Task(
      id: 'p4',
      title: "di choi",
      done: false,
      color: Colors.yellow,
    ),
  ];

  void addTask(Task task) {
    listTask.add(task);
  }

  void deleteTask(Task task) {
    listTask.remove(task);
  }
}
