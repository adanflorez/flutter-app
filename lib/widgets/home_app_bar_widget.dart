import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';

class HomAppBarTitle extends StatelessWidget {
  const HomAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                image: AssetImage("assets/images/user.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "Store Name",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          ContainerHeaderIcon(
            iconButton: IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.notifications,
                color: CustomColors.brandPrimaryColor,
              ),
            ),
            margin: const EdgeInsets.only(right: 12.0),
          ),
          ContainerHeaderIcon(
            iconButton: IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.more_vert,
                color: CustomColors.brandPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? margin;
  const ContainerHeaderIcon({super.key, required this.iconButton, this.margin});

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
