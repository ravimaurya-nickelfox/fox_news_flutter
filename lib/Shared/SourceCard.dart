import 'package:flutter/material.dart';
import 'package:news_app/Models/AppConfig.dart';

class SourceCard extends StatelessWidget {
  final String url;
  final String name;
  final Function onTap;
  final AppConfig config = AppConfig();

  SourceCard({@required this.url, @required this.name, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network('${config.iconPath}${this.url}', height: 96, width: 96,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(this.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), textAlign: TextAlign.center,)
            )
          ],
        )
      ),
    );
  }
}
