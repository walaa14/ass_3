import 'package:flutter/material.dart';
import 'package:ass/tasks_data.dart';
import 'package:ass/task_widget.dart';
class AllTasksScreen extends StatefulWidget {
  Function fun;
  AllTasksScreen(this.fun);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  @override
  Widget build(BuildContext context) {
     ref(){
       setState(() {

       });
     }
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index],widget.fun,ref);
        });
  }
}