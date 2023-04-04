// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:to_do_app/model/todo.dart';

class toDoItem extends StatelessWidget {
  final ToDo todo;
  const toDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Clicked on list item");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: todo.isDone
            ? Icon(
                Icons.check_box,
                color: Colors.blue[300],
              )
            : Icon(Icons.check_box_outline_blank),
        title: Text(
          todo.toDoText!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          onPressed: () {
            print("Clicked on delete button");
          },
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
