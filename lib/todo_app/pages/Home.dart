import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/model.dart';
import 'package:state_managment/todo_app/pages/AllOfTask.dart';
import 'package:state_managment/todo_app/pages/FinshTask.dart';
import 'package:state_managment/todo_app/pages/NotComplete.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todo App'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.list),
                ),
                Tab(
                  icon: Icon(Icons.done),
                ),
                Tab(
                  icon: Icon(Icons.cancel),
                ),
              ],
            ),
          ),
          body:
              TabBarView(children: [ALLOfTask(), FinshScreen(), NotComplete()]),
        ));
  }
}
