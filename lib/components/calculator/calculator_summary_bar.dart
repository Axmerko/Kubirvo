import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/keys.dart';

class CalculatorSummaryBar extends StatelessWidget {
  final String title;
  final double volume;
  final int count;

  const CalculatorSummaryBar({
    super.key,
    required this.title,
    required this.volume,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        // border: const Border(
        //   bottom: BorderSide(
        //     color: Colors.grey,
        //     width: 1.0,
        //   ),
        // ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            key: const Key(calculatorSummaryBarTextTitleKey),
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            key: const Key(calculatorSummaryBarTextAmountsKey),
            '${volume.toStringAsFixed(2)} m³ | $count ks',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
