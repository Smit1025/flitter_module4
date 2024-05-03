import 'package:flutter/material.dart';

class dateandmonths extends StatefulWidget {
  const dateandmonths({super.key});

  @override
  State<dateandmonths> createState() => _dateandmonthsState();
}

class _dateandmonthsState extends State<dateandmonths> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2026),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _dateTime.day.toString(),
              style: TextStyle(fontSize: 40),
            ),
            MaterialButton(
              onPressed: _showDatePicker,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Choose Date",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
