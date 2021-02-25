import 'dart:ui';
import "package:flutter/material.dart";


class TaskTile extends StatelessWidget{

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPresscallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPresscallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPresscallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.red,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



