import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/design/radius.dart';
import 'package:hello_world/widgets/movements_widget.dart';

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
