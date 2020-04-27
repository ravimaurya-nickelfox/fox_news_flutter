import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/Routes/BottomNavigator.dart';
import 'package:news_app/Screens/Home/Home.dart';
import 'package:news_app/Screens/ReadNews/ReadNews.dart';
import 'package:news_app/Screens/Splash.dart';

void main() async {
  await DotEnv().load(".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFX News',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber[800],
        accentColor: Colors.amberAccent[700],
        fontFamily: "Manrope",
        brightness: Brightness.light
      ),
      routes: {
        '/': (context) => Splash(),
        '/tab': (context) => BottomNavigator(),
        '/home': (context) => Home(),
        'read': (context) => ReadNews() 
      },
      debugShowCheckedModeBanner: false,
    );
  }
}