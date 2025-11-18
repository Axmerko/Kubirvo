import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kubirovacka_one/colors.dart';

class CalculatorButton extends StatelessWidget {
  final Key? buttonKey;
  final String text;
  final Color fillColor;
  final Function onPressed;
  final int flex;
  final double fontSize;

  const CalculatorButton({super.key,
    this.buttonKey,
    required this.text,
    required this.fillColor,
    required this.onPressed,
    this.flex = 1,
    this.fontSize = 18,
  });

  void _onPressed() {
    HapticFeedback.lightImpact();
    onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          key: buttonKey,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(fillColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(
                  color: primaryColor,
                  width: 0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          onPressed: _onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

}