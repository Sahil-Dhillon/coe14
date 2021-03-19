import 'package:coe14/convo.dart';
import 'package:coe14/home.dart';
import 'package:coe14/settings.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    title: "COE14",
    // darkTheme: ThemeData.dark(),
    home: SplashScreenPage(),
  ));
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Mybottomnavigationbar(),
      backgroundColor: Colors.white,
      title: new Text(
        'COE 14',
        textScaleFactor: 2,
      ),
      // image: Image.asset("assets/img/favicon.png"),
      // photoSize: 150.0,
      loaderColor: Colors.blueAccent,
    );
  }
}

class Mybottomnavigationbar extends StatefulWidget {
  @override
  _MybottomnavigationbarState createState() => _MybottomnavigationbarState();
}

class _MybottomnavigationbarState extends State<Mybottomnavigationbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), ChatScreen(), SettingsPage()];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        height: 50,
        onTap: onTappedBar,
        index: _currentIndex,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.chat, size: 30),
          Icon(Icons.settings, size: 30),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
