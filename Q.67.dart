import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile App'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              } else if (value == 'Logout') {}
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Profile'),
                value: 'Profile',
              ),
              PopupMenuItem(
                child: Text('Logout'),
                value: 'Logout',
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
