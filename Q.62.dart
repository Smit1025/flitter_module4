import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alertdualog extends StatefulWidget {
  const alertdualog({super.key});

  @override
  State<alertdualog> createState() => _alertdualogState();
}

class _alertdualogState extends State<alertdualog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Dialog tital"),
                    content: TextField(
                      decoration: InputDecoration(
                        hintText: "Anything",
                      ),
                    ),
                    icon: Icon(CupertinoIcons.delete),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("NO"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          print("YES");
                        },
                        child: Text("YES"),
                      )
                    ],
                  );
                });
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
