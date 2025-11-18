
import 'package:flutter/material.dart';

class Heading2 extends StatelessWidget {
  final String text;
  final TextAlign align;

  const Heading2(this.text, {super.key, this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Color(0xFF333333)),
      textAlign: align,
    );
  }
}
