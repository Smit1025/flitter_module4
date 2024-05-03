import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class phonecall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallAndSMSDemo(),
    );
  }
}

class CallAndSMSDemo extends StatelessWidget {
  _makePhoneCall(String phoneNumber) async {
    if (await canLaunch('tel:$phoneNumber')) {
      await launch('tel:$phoneNumber');
    } else {
      throw 'Could not launch $phoneNumber';
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
            _makePhoneCall('8849596092');
          },
          child: Text('Make Phone Call'),
        ),
      ),
    );
  }
}
