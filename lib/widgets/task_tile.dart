import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  TaskTile({this.isChecked= false, this.taskTitle, this.toggleCheckBox});
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckBox;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          value: isChecked,
          onChanged: toggleCheckBox
      ),
    );
  }
}


//(bool checkBoxState)
//{
//setState(() {
//isChecked = checkBoxState;
//});
//},
