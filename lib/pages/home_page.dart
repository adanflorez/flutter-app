import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/home_app_bar_widget.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: CustomColors.brandPrimaryColor,
        ),
        child: const Column(
          children: [
            SummaryCardTemporal(
              typeSummaryCard: TypeSummaryCard.incomes,
              title: "Incomes",
            ),
          ],
        ),
      ),
    );
  }
}

enum TypeSummaryCard { incomes, spending }

class SummaryCardTemporal extends StatelessWidget {
  final TypeSummaryCard typeSummaryCard;
  final String title;

  const SummaryCardTemporal(
      {super.key, required this.typeSummaryCard, required this.title});

  @override
  Widget build(BuildContext context) {
    Icon incomesIcon =
        const Icon(Icons.arrow_upward, color: CustomColors.brandOnSuccessColor);
    Icon spendingIcon =
        const Icon(Icons.arrow_downward, color: CustomColors.brandOnErrorColor);

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        height: 92,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: CustomColors.brandLightColorOpacity,
          borderRadius: BorderRadius.all(CustomRadius.xs),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.only(right: 8.0),
              decoration: const BoxDecoration(
                color: CustomColors.brandLightColor,
                borderRadius: BorderRadius.all(CustomRadius.xs),
              ),
              child: typeSummaryCard == TypeSummaryCard.incomes
                  ? incomesIcon
                  : spendingIcon,
            ),
            Expanded(
                child: Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            )),
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  NumberFormatter(
                    amount: 122222.34,
                    amountStyle: Theme.of(context).textTheme.displayMedium,
                    amountSmallStyle: Theme.of(context).textTheme.displaySmall,
                  ),
                  const Text("From January 1 to January 31",
                      style: TextStyle(
                          color: CustomColors.brandLightColor,
                          fontFamily: 'RobotoMono',
                          fontSize: 10.0)),
                ],
              ),
            )
          ],
        ));
  }
}
