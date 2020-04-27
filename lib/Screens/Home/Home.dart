import 'package:flutter/material.dart';
import 'package:news_app/Models/AppConfig.dart';
import 'package:news_app/Shared/NavImageCard.dart';
import 'package:news_app/Shared/NewsCard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void onPressNews(String id) {
    Navigator.pushNamed(context, "read", arguments: {'id': id});
  }

  final List<int> newsList = [1, 1, 1, 1];

  @override
  void initState() {
    super.initState();
    AppConfig config = AppConfig();
    print(config.key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Fox News 24", style: TextStyle(color: Colors.grey[50])),
              background: NavImageCard(imageUrl: "https://picsum.photos/1024", title: "Fox News 24",)
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.notifications),
                tooltip: 'Add new entry',
                onPressed: () { /* ... */ },
              ),
            ],
            floating: true,
            pinned: true,
            stretch: true,
          ),
          SliverFixedExtentList(
            itemExtent: 380.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return NewsCard(tapAction: this.onPressNews);
              },
              childCount: 30
            ),
          ),
        ],
      ),
    );
  }
}