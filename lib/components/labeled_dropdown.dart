import 'package:flutter/material.dart';
import 'package:kubirovacka_one/colors.dart';

class LabeledDropdown<T> extends StatefulWidget {
  final String label;
  final Map<T, String> options;
  final ValueChanged<T>? onChanged;
  final int defaultValueIndex;
  final bool emitDefaultValue;

  const LabeledDropdown({super.key, required this.label, required this.options, required this.onChanged, this.defaultValueIndex = 0, this.emitDefaultValue = true});

  @override
  LabeledDropdownState<T> createState() => LabeledDropdownState<T>();
}

class LabeledDropdownState<T> extends State<LabeledDropdown<T>> {

  @override
  void initState() {
    super.initState();
    if (widget.emitDefaultValue) widget.onChanged!(widget.options.keys.elementAt(widget.defaultValueIndex));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).shadowColor,
          ),
          child: DropdownButtonFormField(
              onChanged: (value) {
                widget.onChanged!(value as T);
              },
              // value: _unitSystem,
              borderRadius: BorderRadius.circular(8),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 15, right: 15),
                border: InputBorder.none,
                errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: warningColor, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: warningColor, width: 2),
                ),
              ),
              items: widget.options.entries.map((entry) => DropdownMenuItem(value: entry.key, child: Text(entry.value))).toList(),
            value: widget.options.keys.elementAt(widget.defaultValueIndex),
          )
        ),
      ],
    );
  }
}
