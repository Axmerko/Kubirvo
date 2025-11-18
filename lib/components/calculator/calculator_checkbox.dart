import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kubirovacka_one/colors.dart';

class CalculatorCheckbox extends StatelessWidget {
  final Key? checkboxKey;
  final String text;
  final Color fillColor;
  final ValueChanged<bool> onChanged;
  final int flex;
  final double fontSize;
  final bool value;

  const CalculatorCheckbox({
    super.key,
    this.checkboxKey,
    required this.value,
    required this.text,
    required this.fillColor,
    required this.onChanged,
    this.flex = 1,
    this.fontSize = 18,
  });

  void _onChanged(bool value) {
    HapticFeedback.lightImpact();
    onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: () => _onChanged(!value),
        child: Container(
          color: fillColor,
          child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    key: checkboxKey,
                    fillColor: WidgetStateProperty.all(Colors.white),
                    checkColor: primaryColor,
                    value: value,
                    onChanged: (_) {
                      _onChanged(!value);
                    },
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
