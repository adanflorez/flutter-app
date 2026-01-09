import 'package:flutter/material.dart';
import 'package:hello_world/design/themes.dart';
import 'package:hello_world/pages/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: CustomTheme.main, home: const HomePage(key: Key('home page!!!'),));
  }
}
