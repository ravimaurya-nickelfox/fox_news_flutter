import 'package:flutter/material.dart';

class NavImageCard extends StatefulWidget {

  final String imageUrl;
  final String title;

  NavImageCard({Key key, @required this.imageUrl, this.title}) : super(key: key);

  @override
  _NavImageCardState createState() => _NavImageCardState();
}

class _NavImageCardState extends State<NavImageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.imageUrl),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              // Text(widget.title, style: TextStyle(color: Colors.grey[50], fontSize: 30))
            ],
          ),
        ),
      ),
    );
  }
}