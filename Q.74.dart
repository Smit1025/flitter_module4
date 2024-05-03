import 'package:advans/Q.74.2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome To Screen 1",
            style: TextStyle(color: Colors.teal, fontSize: 36),
          ),
          SizedBox(
            height: 400,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screen2()));
              },
              child: Text("Screen 2"))
        ],
      ),
    );
  }
}
