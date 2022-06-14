import 'package:flutter/material.dart';
import 'package:state_managment/news/data.dart';
import 'package:state_managment/news/Widget.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(newsList[index]);
          }),
    );
  }
}
