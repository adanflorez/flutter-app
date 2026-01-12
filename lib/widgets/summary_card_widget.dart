import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/pages/home_page.dart';
import 'package:hello_world/widgets/button_icon_widget.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';

class SummaryCard extends StatelessWidget {
  final TypeSummaryCard typeSummaryCard;
  final String title;
  final double amount;
  final Function()? action;

  const SummaryCard(
      {super.key,
      required this.typeSummaryCard,
      required this.title,
      this.action, required this.amount});

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
                    amount: amount,
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
            ),
            ButtonIcon(
              iconButton: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: CustomColors.brandSecondaryColor,
                ),
                onPressed: action,
              ),
              borderColor: CustomColors.brandSecondaryColor,
            ),
          ],
        ));
  }
}
