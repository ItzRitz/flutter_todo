import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/models/tasks.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [];
  // String taskName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskSheet(
                    addTask: (newTask){
                      setState(() {
                        tasks.add(Task(taskName: newTask));
                      });
                      Navigator.pop(context);
                    },
                  ),
              ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
            Icons.add,
            size: 30.0,
            color: Colors.white,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  "${tasks.length} Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0
                  ),
                ),
                SizedBox(height: 30.0,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
              ),
              child: TaskList(tasks: tasks,),
            ),
          ),
        ],
      ),
    );
  }
}




