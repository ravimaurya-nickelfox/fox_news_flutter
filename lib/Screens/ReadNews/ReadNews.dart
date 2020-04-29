import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReadNews extends StatelessWidget {

  void shareNews(String title, String url) {
    Share.share('$title $url', subject: "Download Fox News App");
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(data["title"]),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Share News',
            onPressed: () {
              this.shareNews(data["title"], data["url"]);
            },
          ),
        ],
      ),
      body: WebView(
              initialUrl: data["url"],
            )
    );
  }
}