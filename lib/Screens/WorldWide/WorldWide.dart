import 'package:flutter/material.dart';
import 'package:news_app/Models/SourceScreenArguments.dart';
import 'package:news_app/Services/NewsApi.dart';
import 'package:news_app/Shared/CenterLoader.dart';
import 'package:news_app/Shared/SourceCard.dart';

class WorldWide extends StatefulWidget {
  @override
  _WorldWideState createState() => _WorldWideState();
}

class _WorldWideState extends State<WorldWide> {
  List sources;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    getSources();
  }

  void getSources() async {
    NewsApi api = NewsApi();
    await api.getSources();
    print(api.response);
    if (api.response.statusCode == "ok") {
      this.setState(() {
        this.sources = api.response.data;
        this.loading = false;
      });
    } else {
      setState(() {
        this.loading = false;
      });
      print(api.response.errors);
    }
  }

  void onSourceTap(String id) {
    Navigator.pushNamed(context, "newsBySource", arguments: {'id': id});
  }

  @override
  Widget build(BuildContext context) {
    if (this.loading == true) {
      return Loader();
    }
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("News Sources",
                  style: TextStyle(color: Colors.grey[50])),
            ),
            pinned: true,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Map data = this.sources[index];
                return SourceCard(
                  url: data["url"], 
                  name: data["name"],
                  onTap: () {
                    this.onSourceTap(data["id"]);
                  },
                );
              },
              childCount: this.sources.length,
            ),
          )
        ],
      ),
    );
  }
}
