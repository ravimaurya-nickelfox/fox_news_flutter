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
            child: Container(
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    title: Text("Notification"),
                    value: true,
                    onChanged: (bool value){},
                    secondary: Icon(Icons.notifications),
                  )
                ],
              ),
            ),            
          )
        ],
      ),
    );
  }
}