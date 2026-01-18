import 'package:flutter/material.dart';
import 'package:hello_world/config/app_routes.dart';
import 'package:hello_world/models/user.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User(id: '1', name: 'John Doe', age: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(AppRoutes.otherPage, arguments: user);
          },
          child: const Text('Ir a otra página'),
        ),
      ),
    );
  }
}
