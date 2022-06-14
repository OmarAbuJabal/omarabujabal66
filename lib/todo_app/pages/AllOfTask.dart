import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/todo_app/provider.dart';
import 'package:state_managment/todo_app/widget.dart';

class ALLOfTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).allTasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(Provider.of<TodoProvider>(context).allTasks[index]);
        });
  }
}
