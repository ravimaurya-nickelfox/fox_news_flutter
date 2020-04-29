import 'package:flutter/material.dart';

class NewsCardImage extends StatelessWidget {

  final String imageUrl;
  final double imageHeight;
  final double imageWidth;
  final String defaultImage = "https://picsum.photos/200/300";
  NewsCardImage({@required this.imageUrl, @required this.imageHeight, this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Image.network(this.imageUrl ?? this.defaultImage, fit: BoxFit.fill, height: this.imageHeight, width: this.imageWidth);
  }
}