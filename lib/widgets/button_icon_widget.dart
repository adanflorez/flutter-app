import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';

class ButtonIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? margin;
  final Color? borderColor;
  
  const ButtonIcon(
      {super.key, required this.iconButton, this.margin, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: margin,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor ?? CustomColors.brandLightColorBorder,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: iconButton,
    );
  }
}
