import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? toDoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.toDoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", toDoText: "Go to Gym", isDone: false),
      ToDo(id: "02", toDoText: "Learn Flutter", isDone: false),
      ToDo(id: "03", toDoText: "Have breakfast", isDone: false),
      ToDo(id: "04", toDoText: "Take a Bath", isDone: false),
    ];
  }
}
