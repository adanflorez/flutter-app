import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/button_icon_widget.dart';
import 'package:hello_world/widgets/home_app_bar_widget.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';
import 'package:hello_world/widgets/summary_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: CustomRadius.xs, bottomLeft: CustomRadius.xs),
        ),
        toolbarHeight: 85.0,
        backgroundColor: CustomColors.brandLightColor,
        title: const HomAppBarTitle(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        transform: Matrix4.translationValues(0.0, -12.0, 0.0),
        decoration: const BoxDecoration(
          color: CustomColors.brandPrimaryColor,
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SummaryCard(
              amount: 150000,
              typeSummaryCard: TypeSummaryCard.incomes,
              title: "Ingresos",
              action: () => print("Ingresos pressed"),
            ),
            const SizedBox(height: 8.0),
            SummaryCard(
              amount: 50000,
              typeSummaryCard: TypeSummaryCard.spending,
              title: "Gastos",
              action: () => print("Gastos pressed"),
            ),
          ],
        ),
      ),
    );
  }
}

enum TypeSummaryCard { incomes, spending }
