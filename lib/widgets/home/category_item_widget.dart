import 'package:flutter/material.dart';
import 'package:hello_world/design/colors.dart';
import 'package:hello_world/widgets/number_formatter_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  final String imageUrl;
  const CategoryItemWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          color: CustomColors.brandLightColor,
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Row(
        children: [
          Container(
            width: 56.0,
            height: 79.0,
            decoration: const BoxDecoration(
              color: CustomColors.brandSecondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food & Drink',
                    style: TextStyle(
                      color: CustomColors.brandDarkColor,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'RobotoMono',
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    '+ \$ 250.00 Today',
                    style: TextStyle(
                      color: CustomColors.brandDarkColor,
                      fontFamily: 'RobotoMono',
                      fontSize: 10.0,
                    ),
                  ),
                  NumberFormatter(
                      amount: 123.23,
                      padding: EdgeInsets.only(top: 4, right: 2),
                      amountStyle: TextStyle(
                        fontSize: 20.0,
                        color: CustomColors.brandPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      amountSmallStyle: TextStyle(
                        fontSize: 10.0,
                        color: CustomColors.brandPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ),
          Container(
            width: 64.0,
            margin: const EdgeInsets.only(bottom: 70.0),
            decoration: const BoxDecoration(
              color: CustomColors.brandSuccessColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.expand_less,
                    color: CustomColors.brandOnSuccessColor),
                Text('12%',
                    style: TextStyle(
                      color: CustomColors.brandOnSuccessColor,
                      fontFamily: 'RobotoMono',
                      fontSize: 14.0,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
