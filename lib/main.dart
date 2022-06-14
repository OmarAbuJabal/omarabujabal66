import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/news/news.dart';
import 'package:state_managment/todo_app/pages/Home.dart';
import 'package:state_managment/todo_app/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TodoProvider>(
        create: (context) {
          return TodoProvider();
        },
        child: MaterialApp(home: Home())),
  );
}
