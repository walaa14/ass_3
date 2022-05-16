import 'package:flutter/material.dart';
import 'package:ass/tasks_data.dart';
import 'package:ass/task_model.dart';

class TaskWidget extends StatefulWidget {
  Function fun;
  Task task;
  Function fun2;
  TaskWidget(this.task, this.fun,this.fun2);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: widget.task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(widget.task.title),
        value: widget.task.isCompleted,
        secondary: IconButton(icon: Icon(Icons.delete,color: Colors.red,),onPressed: (){
          if(tasksList.contains(widget.task)){
            setState(() {
              int index = tasksList.indexOf(widget.task);
              tasksList.removeAt(index);
            });
           }
          widget.fun2();
        },),
        onChanged: (v) {
          widget.fun(widget.task);
        },
      ),
    );
  }
}