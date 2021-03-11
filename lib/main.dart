import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "COE14",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COE14"),backgroundColor: Color.fromRGBO(50, 30, 0, 0.9),),
      body: Container(
        child: Center(child: Text("Hello guyssss.....")),
      ),
    );
  }
}

