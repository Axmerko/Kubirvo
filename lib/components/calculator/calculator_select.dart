import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kubirovacka_one/colors.dart';
import 'package:kubirovacka_one/keys.dart';

class CalculatorSelect<T> extends StatelessWidget {
  final Key? selectKey;
  final GlobalKey<FormFieldState<T>>? formFieldKey;
  final String name;
  final T value;
  final Color fillColor;
  final ValueChanged<T> onChanged;
  final int flex;
  final double fontSize;
  final List<T> options;
  final String Function(T) displayValueMapper;

  const CalculatorSelect({
    super.key,
    this.selectKey,
    this.formFieldKey,
    required this.name,
    required this.value,
    required this.fillColor,
    required this.onChanged,
    required this.options,
    required this.displayValueMapper,
    this.flex = 1,
    this.fontSize = 18,
  });

  void _onChanged(T? value) {
    HapticFeedback.lightImpact();
    if (value == null) return;
    onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: selectKey,
      flex: flex,
      child: SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: fillColor,
              border: Border.all(color: primaryColor, width: 0),
            ),
            alignment: Alignment.center,
            child: DropdownButtonFormField<T>(
              key: formFieldKey,
              isExpanded: true,
              onChanged: _onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                label: SizedBox(
                  width: double.infinity,
                  child: Text(
                    name,
                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, height: 1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              icon: Container(),
              alignment: Alignment.bottomCenter,
              dropdownColor: primaryDarkColor,
              value: value,
              items: options.map<DropdownMenuItem<T>>((T value) {
                final index = options.indexOf(value);
                return DropdownMenuItem<T>(
                  key: Key("$calculatorDropdownOptionKey${T.toString()}_$index"),
                  value: value,
                  alignment: Alignment.center,
                  child: Text(
                    displayValueMapper(value),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          )),
    );
  }
}
