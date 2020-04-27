import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NavVideoCard extends StatefulWidget {
  final String videoUrl;

  NavVideoCard({Key key, @required this.videoUrl}): super(key: key);

  @override
  _NavVideoCardState createState() => _NavVideoCardState();
}

class _NavVideoCardState extends State<NavVideoCard> {

  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    
    _controller = VideoPlayerController.network(widget.videoUrl);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}