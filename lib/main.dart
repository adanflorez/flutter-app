import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("App"),
    ),
    body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Hello, World!",
            style: TextStyle(fontSize: 34),
          ),
        )),
  )));
}
