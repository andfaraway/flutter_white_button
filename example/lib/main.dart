import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_white_button/flutter_white_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffe0e0e0),
        // appBar: AppBar(
        //   title: const Text('Plugin example app'),
        // ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterWhiteButton(),
          ),
        ),
      ),
    );
  }
}
