import 'package:advans/Q.74.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 2")),
      body: Column(
        children: [
          Text(
            "Welcome to Screen 2",
            style: TextStyle(
                color: Color.fromARGB(255, 16, 130, 196), fontSize: 36),
          ),
          SizedBox(
            height: 400,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen1()));
              },
              child: Text("Screen 1"))
        ],
      ),
    );
  }
}
