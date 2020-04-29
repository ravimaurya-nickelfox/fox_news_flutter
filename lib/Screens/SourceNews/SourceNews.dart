import 'package:flutter/material.dart';
import 'package:news_app/Models/SourceScreenArguments.dart';
import 'package:news_app/Services/NewsApi.dart';
import 'package:news_app/Shared/CenterLoader.dart';
import 'package:news_app/Shared/NavImageCard.dart';
import 'package:news_app/Shared/NewsCard.dart';

class SourceNews extends StatefulWidget {
  final String id;
  SourceNews({this.id});

  @override
  _SourceNewsState createState() => _SourceNewsState();
}

class _SourceNewsState extends State<SourceNews> {

  Map topNews;
  List newsList;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    this.getSourceNews();
  }

  getSourceNews() async {
    NewsApi api = NewsApi();
    print(this.widget.id);
    // await api.getNewsBySource(this.widget.id);
    // print(api.response.data);
    
    // if (api.response.statusCode == "ok") {
    //   this.setState(() {
    //     final List data = api.response.data;
    //     this.topNews = data[0];
    //     data.removeAt(0);
    //     this.newsList = data;
    //     this.loading = false;
    //   });
    //   print(this.topNews);
    // } else {
    //   setState(() {
    //     this.loading = false;
    //   });
    //   print(api.response.errors);
    // }
  }

  void onPressNews(String url, String title) {
    Navigator.pushNamed(context, "read", arguments: {'url': url, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    if (loading == true) {
      return Loader();
    } else {
      return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              forceElevated: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(this.topNews["title"], style: TextStyle(color: Colors.grey[50]), maxLines: 1),
                collapseMode: CollapseMode.parallax,
                titlePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                background: NavImageCard(imageUrl: this.topNews["urlToImage"], pressAction: () {
                  onPressNews(this.topNews["url"], this.topNews["title"]);
                },)
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.notifications),
                  tooltip: 'Notifications',
                  onPressed: () { /* ... */ },
                ),
              ],
              pinned: true,
              stretch: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final Map data = this.newsList[index];
                  return NewsCard(
                    tapAction: () => this.onPressNews(data["url"], data["title"]),
                    title: data["title"],
                    info: data["description"],
                    image: data["urlToImage"],
                    time: data["publishedAt"],
                    source: data["source"],
                    author: data["author"],
                  );
                },
                childCount: this.newsList.length
              ),
            )
          ],
        ),
      );
    }
  }
}