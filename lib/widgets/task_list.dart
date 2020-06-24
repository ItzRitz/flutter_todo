import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatefulWidget {

  final List tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
        return TaskTile(
          taskTitle: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          toggleCheckBox: (bool checkBoxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
    },
    itemCount: widget.tasks.length,
    );
  }
}
