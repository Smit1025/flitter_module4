import 'package:advans/Q.63.2.dart';
import 'package:flutter/material.dart';

class AlerBox extends StatefulWidget {
  const AlerBox({super.key});

  @override
  State<AlerBox> createState() => _AlerBoxState();
}

class _AlerBoxState extends State<AlerBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertBox Dialog Box"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                myDialogBox(context);
              },
              child: Text(
                "Clike Me",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> myDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 236, 241, 243),
            title: Text("Reset Setting"),
            content: Text("This Will reset all the setting on you device"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "cancel",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => secondscreen()));
                },
                child: Text(
                  "Accept",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          );
        });
  }
}
