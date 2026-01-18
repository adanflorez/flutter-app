import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/widgets/home/category_item_widget.dart';

class BottomBodyWidget extends StatelessWidget {
  const BottomBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: CustomColors.brandSecondaryColor,
      child: ListView(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  'new-page',
                );
              },
              style: TextButton.styleFrom(
                alignment: Alignment.centerRight,
              ),
              child: const Text(
                'View All',
                style: TextStyle(
                    color: CustomColors.brandPrimaryColor,
                    fontSize: 13.0,
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.bold),
              )),
          const CategoryItemWidget(
            imageUrl: 'assets/images/pizza.png',
          ),
          const SizedBox(height: 16.0),
          const CategoryItemWidget(
            imageUrl: 'assets/images/tv.png',
          ),
          const SizedBox(height: 16.0),
          const CategoryItemWidget(
            imageUrl: 'assets/images/health.png',
          ),
        ],
      ),
    ));
  }
}
