import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallAndSMSDemo(),
    );
  }
}

class CallAndSMSDemo extends StatelessWidget {
  _sendSMS(String phoneNumber, String message) async {
    if (await canLaunch('sms:$phoneNumber')) {
      await launch('sms:$phoneNumber?body=$message');
    } else {
      throw 'Could not send SMS to $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call and SMS Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _sendSMS('123456789', 'Hello!');
          },
          child: Text('Send SMS'),
        ),
      ),
    );
  }
}
