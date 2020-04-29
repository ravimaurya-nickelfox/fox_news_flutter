import 'package:flutter/material.dart';

class NavImageCard extends StatefulWidget {

  final String imageUrl;
  final Function pressAction;

  NavImageCard({Key key, @required this.imageUrl, @required this.pressAction}) : super(key: key);

  @override
  _NavImageCardState createState() => _NavImageCardState();
}

class _NavImageCardState extends State<NavImageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          widget.pressAction();
        },
        child: Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.imageUrl),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              verticalDirection: VerticalDirection.up,
            ),
          ),
        ),
      ),
    );
  }
}