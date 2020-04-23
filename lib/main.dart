import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Generator',
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple.shade300,
      ),
    );
  }
}
