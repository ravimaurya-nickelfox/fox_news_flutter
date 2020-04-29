import 'package:flutter/material.dart';

class WorldWide extends StatefulWidget {
  @override
  _WorldWideState createState() => _WorldWideState();
}

class _WorldWideState extends State<WorldWide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("News Sources", style: TextStyle(color: Colors.grey[50])),
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