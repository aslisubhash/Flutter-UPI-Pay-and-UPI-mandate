import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(title: const Text('UPI Payment')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    const String upiUrl =
                        'upi://pay?pa=digital21@indianbk&pn=Audiokumbh&mc=5732&aid=uGICAgIDn98OpSw&tr=BCR2DN6T37O6DB3Q';
                    launchUrl(
                      Uri.parse(upiUrl),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: const Text('Pay via UPI'),
                ),
                const SizedBox(height: 20), // Add some spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    // Replace this URL with the actual UPI mandate creation URL
                    const String mandateUrl = 'upi://mandate?pa=digital21@indianbk&pn=DIGITAL%20KUMBH%20PVT%20LTD&tid=9876543210&am=10.00&cu=INR&url=https%3A%2F%2Fdummyserver.com%2Fupi%2Fmandate&ct=2023-04-12T10%3A00%3A00Z&et=2023-04-12T23%3A59%3A59Z&rurl=https%3A%2F%2Fdummyserver.com%2Freturn';
                    launchUrl(
                      Uri.parse(mandateUrl),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: const Text('Create UPI Mandate'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
