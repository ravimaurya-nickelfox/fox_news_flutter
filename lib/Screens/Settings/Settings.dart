import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Settings", style: TextStyle(color: Colors.grey[50])),
            ),
            pinned: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 2,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage("Assets/images/avatar.jpg")
                              ),
                              SizedBox(height: 10),
                              Text("V. Garath", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                              SizedBox(height: 5),
                              Text("v.garath@foxnew.com", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),            
          )
        ],
      ),
    );
  }
}