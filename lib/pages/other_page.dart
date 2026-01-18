import 'package:flutter/material.dart';
import 'package:hello_world/models/user.dart';

class OtherPage extends StatelessWidget {
  final User user;
  const OtherPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Hola, ${user.name}'),
        ),
      ),
    );
  }
}
