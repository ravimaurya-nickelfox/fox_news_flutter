import 'package:flutter/material.dart';

class VideoNews extends StatefulWidget {
  @override
  _VideoNewsState createState() => _VideoNewsState();
}

class _VideoNewsState extends State<VideoNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Video News", style: TextStyle(color: Colors.grey[50])),
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: Container(
              child: Column(
                children: <Widget>[
                  
                ],
              ),
            ),            
          )
        ],
      ),
    );
  }
}