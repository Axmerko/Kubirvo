
import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  final String text;
  final TextAlign align;

  const Heading1(this.text, {super.key, this.align = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Color(0xFF494949)),
      textAlign: align,
    );
  }
}
