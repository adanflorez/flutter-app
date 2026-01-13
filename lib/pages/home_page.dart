import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/home_app_bar_widget.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';
import 'package:hello_world/widgets/summary_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        title: const HomAppBarTitle(),
      ),
      body: const Column(
        children: [
          TopBodyWidget(),
          MidBodyWidget(),
          Expanded(child: Placeholder())
        ],
      ),
    );
  }
}

class MidBodyWidget extends StatelessWidget {
  const MidBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
      ), // Agrega margen vertical de 16.0 y horizontal de 0.0
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: CustomRadius.xs,
          topRight: CustomRadius.xs,
        ),
      ),
      child: Row(
        children: [
          MovementsButtonsWidget(
            title: "Categories",
            onPressed: () {},
          ),
          MovementsButtonsWidget(
            title: "Recent transactions",
            backgroundColor: CustomColors.brandLightColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class MovementsButtonsWidget extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color? backgroundColor;

  const MovementsButtonsWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? CustomColors.brandSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          )),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          style: const TextStyle(
              color: CustomColors.brandDarkColor,
              fontFamily: 'RobotoMono',
              fontSize: 14.0),
        ),
      ),
    ));
  }
}

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

enum TypeSummaryCard { incomes, spending }
