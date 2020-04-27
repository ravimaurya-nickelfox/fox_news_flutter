import 'package:flutter/material.dart';

class NewsCardImage extends StatelessWidget {

  final String imageUrl;
  final double imageHeight;
  final double imageWidth;
  NewsCardImage({@required this.imageUrl, @required this.imageHeight, this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Image.network(this.imageUrl, fit: BoxFit.fill, height: this.imageHeight, width: this.imageWidth);
  }
}