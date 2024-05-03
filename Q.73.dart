import 'package:flutter/material.dart';

class fastscreen extends StatelessWidget {
  const fastscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App!"),
      ),
      body: Container(
        child: Text("Welcom to my App!"),
      ),
    );
  }
}
