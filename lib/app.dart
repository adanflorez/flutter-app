import 'package:flutter/material.dart';
import 'package:hello_world/config/app_routes.dart';
import 'package:hello_world/design/themes.dart';
import 'package:hello_world/models/user.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/pages/login_page.dart';
import 'package:hello_world/pages/new_page.dart';
import 'package:hello_world/pages/other_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: CustomTheme.main,
        // routes: {
        //   AppRoutes.newPage: (context) => const NewPage(),
        //   AppRoutes.otherPage: (context) => const OtherPage(),
        //   AppRoutes.home: (context) => const HomePage(),
        // },);
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case AppRoutes.newPage:
              return MaterialPageRoute(
                builder: (context) => const NewPage(),
              );
            case AppRoutes.otherPage:
              final user = settings.arguments as User;
              return MaterialPageRoute(
                builder: (context) => OtherPage(user: user),
              );
            case AppRoutes.home:
              final storeName = settings.arguments as String;
              return MaterialPageRoute(
                builder: (context) => HomePage(
                  storeName: storeName,
                ),
              );
            default:
              return MaterialPageRoute(
                builder: (context) => const LoginPage(),
              );
          }
        });
  }
}
