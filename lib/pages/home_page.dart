import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/home_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: CustomRadius.sm, bottomLeft: CustomRadius.sm),
        ),
        toolbarHeight: 97.0,
        backgroundColor: CustomColors.brandLightColor,
        title: const HomAppBarTitle(),
      ),
      body: const Center(
        child: Text(
          "Hello, World!",
        ),
      ),
    );
  }
}
