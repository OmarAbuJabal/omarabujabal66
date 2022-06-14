import 'package:flutter/material.dart';
import 'package:state_managment/news/pages/allscreen.dart';
import 'package:state_managment/news/pages/favouriteScreen.dart';

class NewsHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('News App'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'All News',
                icon: Icon(Icons.list),
              ),
              Tab(
                text: 'Favourite News',
                icon: Icon(Icons.favorite),
              )
            ]),
          ),
          body: TabBarView(children: [AllScreen(), FavourtScreen()])),
    );
  }
}
