import 'package:flutter/material.dart';
import 'package:news_app/Shared/NavImageCard.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReadNews extends StatefulWidget {
  @override
  _ReadNewsState createState() => _ReadNewsState();
}

class _ReadNewsState extends State<ReadNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read News"),
      ),
      body: WebView(
              initialUrl: "https://www.lipsum.com",
            )
    );
  }
}