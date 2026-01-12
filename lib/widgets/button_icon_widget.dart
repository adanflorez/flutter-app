import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';

class ButtonIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? margin;
  const ButtonIcon({super.key, required this.iconButton, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: margin,
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColors.brandLightColorBorder,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: iconButton,
    );
  }
}
