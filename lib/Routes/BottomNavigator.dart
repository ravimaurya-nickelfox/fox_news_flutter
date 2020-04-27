import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home/Home.dart';
import 'package:news_app/Screens/Settings/Settings.dart';
import 'package:news_app/Screens/VideoNews/VideoNews.dart';
import 'package:news_app/Screens/WorldWide/WorldWide.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final double iconSizeDefault = 28;
  final double iconSizeSelected = 30;
  int activeTab = 0;
  List<Widget> tabScreens;

  @override
  void initState() {
    super.initState();
    tabScreens = [
      Home(),
      WorldWide(),
      VideoNews(),
      Settings()
    ];
  }

  void onTabPress(int index) {
    setState(() {
      activeTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.tabScreens.elementAt(this.activeTab),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){ this.onTabPress(index); },
        currentIndex: this.activeTab,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: this.iconSizeDefault,
        selectedIconTheme: IconThemeData(size: this.iconSizeSelected),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            title: Text("World News")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text("Video News")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings")
          ),
        ],
      ),
    );
  }
}