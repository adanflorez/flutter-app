import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';
import 'package:hello_world/widgets/summary_card_widget.dart';

class TopBodyWidget extends StatelessWidget {
  const TopBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      transform: Matrix4.translationValues(0.0, -12.0, 0.0),
      decoration: const BoxDecoration(
        color: CustomColors.brandPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: CustomRadius.xs,
          bottomRight: CustomRadius.xs,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 56.0),
          Text(
            "Your budget",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          NumberFormatter(
              amount: 2868000,
              padding: const EdgeInsets.only(top: 8.0, right: 4.0),
              amountStyle: Theme.of(context).textTheme.displayLarge,
              amountSmallStyle: const TextStyle(
                fontSize: 16.0,
                color: CustomColors.brandLightColor,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 42.0),
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
    );
  }
}
