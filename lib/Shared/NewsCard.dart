import 'package:flutter/material.dart';
import 'package:news_app/Shared/NewsCardImage.dart';

class NewsCard extends StatelessWidget {

  final Function tapAction;
  NewsCard({ @required this.tapAction });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {this.tapAction(":id");},
      child: Card(
        elevation: 2,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/100"),
              ),
              title: Text("Fox News", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              trailing: Text("Time", style: TextStyle(color: Colors.grey[400], fontSize: 12),),
            ),
            NewsCardImage(imageUrl: "https://picsum.photos/1024", imageHeight: 220, imageWidth: MediaQuery.of(context).size.width),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("The title of the news", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                    Text(
                      "subtitle of the news\nfdkhdkkjfkdjfkdj", 
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
