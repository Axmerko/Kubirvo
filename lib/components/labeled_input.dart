import 'package:flutter/material.dart';

import 'input.dart';

class LabeledInput extends StatefulWidget {
  final Key? inputKey;
  final String label;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final bool isPasswordInput;
  final TextInputType type;
  final String? suffixText;
  final String? prefixText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final FocusNode? focusNode;
  final bool? disabled;
  final int? maxLines;
  final List<String>? autofillHints;

  const LabeledInput(
      {super.key,
      required this.label,
      required this.controller,
      this.validator,
      this.isPasswordInput = false,
      this.type = TextInputType.text,
      this.prefixText,
      this.suffixText,
      this.onChanged,
      this.prefixIcon,
      this.suffixIcon,
      this.readOnly = false,
      this.focusNode,
      this.disabled,
      this.inputKey,
      this.maxLines = 1,
      this.autofillHints});

  @override
  State<StatefulWidget> createState() => _LabeledInputState();
}

class _LabeledInputState extends State<LabeledInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Input(
          inputKey: widget.inputKey,
          disabled: widget.disabled,
          controller: widget.controller,
          validator: widget.validator,
          autofillHints: widget.autofillHints,
          isPasswordInput: widget.isPasswordInput,
          type: widget.type,
          prefixText: widget.prefixText,
          suffixText: widget.suffixText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          onChanged: widget.onChanged,
          readOnly: widget.readOnly,
          focusNode: widget.focusNode,
          maxLines: widget.maxLines,
        ),
      ],
    );
  }
}
