import 'package:flutter/material.dart';

import 'package:ass/tasks_data.dart';
import 'package:ass/task_model.dart';
import 'package:ass/all_tasks.dart';
import 'package:ass/complete_tasks.dart';
import 'package:ass/incomplete_tasks.dart';
class TodoHomePage extends StatefulWidget {
  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  changeTaskCompleteness(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].isCompleted = !tasksList[index].isCompleted;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO APP'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list),
                text: 'All Tasks',
              ),
              Tab(
                icon: Icon(Icons.done),
                text: 'Complete Tasks',
              ),
              Tab(
                icon: Icon(Icons.cancel),
                text: 'InComplete Tasks',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              AllTasksScreen(changeTaskCompleteness),
              CompleteTasksScreen(changeTaskCompleteness),
              InCompleteTasksScreen(changeTaskCompleteness)
            ],
          ),
        ));
  }
}