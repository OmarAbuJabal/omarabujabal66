import 'package:flutter/material.dart';
import 'package:state_managment/news/data.dart';
import 'package:state_managment/news/Widget.dart';

class FavourtScreen extends StatefulWidget {
  @override
  State<FavourtScreen> createState() => _FavourtScreen();
}

class _FavourtScreen extends State<FavourtScreen> {
  rebuildFavouritePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.where((element) => element.isLiked).length,
          itemBuilder: (context, index) {
            return NewsWidget(
                newsList.where((element) => element.isLiked).toList()[index],
                rebuildFavouritePage);
          }),
    );
  }
}
