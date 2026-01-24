import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/home/bottom_body_widget.dart';
import 'package:hello_world/widgets/home/mid_body_widget.dart';
import 'package:hello_world/widgets/home/top_body_widget.dart';
import 'package:hello_world/widgets/home_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  final String storeName;
  const HomePage({super.key, required this.storeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.brandLightColor,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: CustomRadius.xs, bottomLeft: CustomRadius.xs),
        ),
        toolbarHeight: 85.0,
        backgroundColor: CustomColors.brandLightColor,
        title: HomAppBarTitle(
          storeName: storeName,
        ),
      ),
      body: const Column(
        children: [TopBodyWidget(), MidBodyWidget(), BottomBodyWidget()],
      ),
    );
  }
}

enum TypeSummaryCard { incomes, spending }
