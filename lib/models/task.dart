import 'package:flutter/material.dart';
import 'dart:math' as math;

class Task {
  String? id;
  String title;
  DateTime? date;
  bool done;
  Color? color;

  Task({
    this.id,
    required this.title,
    required this.done,
    this.date,
    this.color,
  }) {
    id ??= DateTime.now().toString();
    // id == null ? id = DateTime now : id = id
    date ??= DateTime.now();
    color ??=
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  void changeDone() {
    done = !done;
  }
}
