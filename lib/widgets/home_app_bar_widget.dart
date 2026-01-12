import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/widgets/button_icon_widget.dart';

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
          ButtonIcon(
            iconButton: IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.notifications,
                color: CustomColors.brandPrimaryColor,
              ),
            ),
            margin: const EdgeInsets.only(right: 12.0),
          ),
          ButtonIcon(
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


