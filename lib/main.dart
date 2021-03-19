import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    title: "COE14",
    darkTheme: ThemeData.dark(),
    home: SplashScreenPage(),
  ));
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new HomePage(),
      backgroundColor: Colors.white10,
      title: new Text(
        'COE 14',
        textScaleFactor: 2,
      ),
      image: new Image.network(
          'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png'),
      loadingText: Text("Loading..."),
      photoSize: 150.0,
      loaderColor: Colors.blueAccent,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("COE14"),
        shadowColor: Colors.blueAccent,
      ),
      body: Container(
        color: Color.fromRGBO(220, 205, 184, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("**NOTICE BOARD**"),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown,
                            blurRadius: 5,
                          )
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.yellow]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(5, 3))
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.yellow]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(5, 3))
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        gradient: LinearGradient(
                            colors: [Colors.green[400], Colors.green[800]]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(5, 3))
                        ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        gradient:
                            LinearGradient(colors: [Colors.red, Colors.pink]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(5, 3))
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        gradient: LinearGradient(
                            colors: [Colors.lightBlue, Colors.blueGrey]),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(5, 3))
                        ]),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.comment, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'COE14',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
