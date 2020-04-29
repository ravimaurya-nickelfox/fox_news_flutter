import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/Shared/NewsCardImage.dart';

class NewsCard extends StatelessWidget {

  final Function tapAction;
  final String title;
  final Map source;
  final String author;
  final String info;
  final String image;
  final String time;
  NewsCard({ @required this.tapAction, @required this.title, @required this.image, @required this.info, this.source, @required this.time, @required this.author});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.parse(this.time);
    String dateString = DateFormat.jm().format(now);
    
    return GestureDetector(
      onTap: this.tapAction,
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
              title: Text(this.author ?? this.source["name"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              trailing: Text(dateString ?? "", style: TextStyle(color: Colors.grey[400], fontSize: 11),),
            ),
            NewsCardImage(imageUrl: this.image, imageHeight: 220, imageWidth: MediaQuery.of(context).size.width),
            Container(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(this.title ?? "", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),maxLines: 1,),
                    Text(
                      this.info ?? "", 
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
