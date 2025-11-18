import 'package:flutter/material.dart';

import '../colors.dart';

class Input extends StatefulWidget {
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final bool isPasswordInput;
  final TextInputType type;
  final String? suffixText;
  final String? prefixText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final bool? disabled;
  final Key? inputKey;
  final int? maxLines;
  final List<String>? autofillHints;

  const Input(
      {super.key,
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
  InputState createState() => InputState();
}

class InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: widget.disabled == null ? lightGrayColor : (widget.disabled! ? darkGrayColor : lightGrayColor),
      ),
      child: TextFormField(
        key: widget.inputKey,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly,
        showCursor: true,
        enabled: widget.disabled == null ? true : !widget.disabled!,
        keyboardType: widget.type,
        autofillHints: widget.autofillHints,
        obscureText: widget.isPasswordInput,
        enableSuggestions: !widget.isPasswordInput,
        autocorrect: !widget.isPasswordInput,
        controller: widget.controller,
        onChanged: widget.onChanged,
        cursorColor: primaryColor,
        cursorRadius: const Radius.circular(8),
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(
            minWidth: 40,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 40,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: const EdgeInsets.only(left: 15, right: 15),
          border: InputBorder.none,
          suffixText: widget.suffixText,
          prefixText: widget.prefixText,
          // always display suffix text, not only when focused

          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: warningColor, width: 1),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: warningColor, width: 2),
          ),
        ),
        validator: widget.validator,
        focusNode: widget.focusNode,
      ),
    );
  }
}
