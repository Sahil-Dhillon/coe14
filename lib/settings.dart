import 'package:flutter/material.dart';
// import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _toggleAirplaneMode = false;
  bool _toggleBluetooth = false;
  bool _toggleWiFi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: NavDrawer(),
      body: Center(
          child: Column(
        children: [
          SwitchListTile(
            title: Text('Airplane Mode'),
            secondary: Icon(Icons.airplanemode_active),
            onChanged: (value) {
              setState(() {
                _toggleAirplaneMode = value;
              });
            },
            value: _toggleAirplaneMode,
          ),
          Divider(
            thickness: 1.2,
          ),
          SwitchListTile(
            title: Text('Wi-Fi'),
            secondary: Icon(Icons.wifi),
            onChanged: (value) {
              setState(() {
                _toggleWiFi = value;
              });
            },
            value: _toggleWiFi,
          ),
          Divider(
            thickness: 1.2,
          ),
          SwitchListTile(
            title: Text('Bluetooth'),
            secondary: Icon(Icons.bluetooth),
            onChanged: (value) {
              setState(() {
                _toggleBluetooth = value;
              });
            },
            value: _toggleBluetooth,
          ),
        ],
      )),
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
