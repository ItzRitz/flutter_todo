import 'package:flutter/material.dart';


class AddTaskSheet extends StatelessWidget {
  final Function addTask;
  AddTaskSheet({this.addTask});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 100.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0,),
              Text(
                'Task',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  autofocus: true,
                  onChanged: (newTask)
                  {
                    newTaskTitle = newTask;
                  },
                ),
              ),
              SizedBox(height: 50.0,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: SizedBox(
                  width: 200,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: (){addTask(newTaskTitle);},
                    color: Colors.lightBlueAccent,
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
