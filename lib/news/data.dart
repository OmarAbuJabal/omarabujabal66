import 'package:state_managment/news/model.dart';

List<Model> newsList = newsData.map((e) {
  return Model(e);
}).toList();
List<Map<String, dynamic>> newsData = [{}];
