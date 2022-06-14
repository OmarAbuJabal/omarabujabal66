import 'package:flutter/material.dart';
import 'package:state_managment/news/model.dart';

class NewsWidget extends StatefulWidget {
  Model newsModel;
  Function? function;
  NewsWidget(this.newsModel, [this.function]);

  @override
  State<NewsWidget> createState() => NewsWidgetState();
}

class NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            trailing: InkWell(
              onTap: () {
                widget.newsModel.isLiked = !widget.newsModel.isLiked;
                setState(() {});
                if (widget.function != null) {
                  widget.function!();
                }
              },
              child: Icon(
                Icons.favorite,
                size: 40,
                color: widget.newsModel.isLiked
                    ? Color.fromARGB(255, 19, 7, 6)
                    : Color.fromARGB(255, 153, 53, 53),
              ),
            ),
            title: Text(widget.newsModel.author!),
            leading: CircleAvatar(
              child: Text(widget.newsModel.author![0].toUpperCase()),
            ),
          ),
          Container(
            height: 300,
            color: Color.fromARGB(255, 233, 46, 46),
            child: Image.network(
              widget.newsModel.urlToImage!,
              fit: BoxFit.cover,
              errorBuilder: (x, y, z) {
                return Center(
                    child: Icon(
                  Icons.broken_image,
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
