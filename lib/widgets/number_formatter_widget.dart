import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberFormatter extends StatelessWidget {
  final double amount;
  final TextStyle? amountStyle;
  final TextStyle? amountSmallStyle;

  const NumberFormatter(
      {super.key,
      required this.amount,
      required this.amountStyle,
      required this.amountSmallStyle});

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(
        customPattern: '#,### \u00a4',
        symbol: '',
        decimalDigits: 2,
        locale: 'es_CO');
    final String convertedAmountToString = formatter.format(amount);
    final List<String> convertedAmountToStringNoDecimals =
        convertedAmountToString.split(',');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 2.0, right: 5.0),
          child: Text(
            '\$',
            style: amountSmallStyle,
          ),
        ),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: convertedAmountToStringNoDecimals[0], style: amountStyle),
          TextSpan(
              text: ',${convertedAmountToStringNoDecimals[1]}',
              style: amountSmallStyle)
        ])),
      ],
    );
  }
}
