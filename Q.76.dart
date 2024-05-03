import 'package:flutter/material.dart';

class sumvalue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Sum Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatelessWidget {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 1',
              ),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number 2',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double number1 = double.tryParse(number1Controller.text) ?? 0;
                double number2 = double.tryParse(number2Controller.text) ?? 0;
                double sum = number1 + number2;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(sum: sum),
                  ),
                );
              },
              child: Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends StatelessWidget {
  final double sum;

  ResultScreen({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Result'),
      ),
      body: Center(
        child: Text(
          'Sum of the numbers: $sum',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
