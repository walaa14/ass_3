import 'package:flutter/material.dart';
import 'package:ass/tasks_data.dart';
import 'package:ass/task_widget.dart';
class InCompleteTasksScreen extends StatefulWidget {
  Function fun;
  InCompleteTasksScreen(this.fun);

  @override
  State<InCompleteTasksScreen> createState() => _InCompleteTasksScreenState();
}

class _InCompleteTasksScreenState extends State<InCompleteTasksScreen> {
  @override
  Widget build(BuildContext context) {
    ref(){
      setState(() {

      });
    }
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList
              .where((element) => !element.isCompleted)
              .toList()[index],widget.fun,ref);
        });
  }
}