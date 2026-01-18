import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';

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
