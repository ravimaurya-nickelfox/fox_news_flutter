import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    this.initMyApp();
  }

  void initMyApp() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/tab");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amber[600], Colors.amber[700], Colors.amber[800], Colors.amber[900]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitFadingCube(
              color: Colors.amber[900],
              size: 60.0,
            ),
            SizedBox(height: 20.0),
            Text("NFX News", style: TextStyle(color: Colors.grey[100], fontSize: 40),)
          ],
        ),
      ),
    );
  }
}