import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BouncingArrow extends StatefulWidget {
  const BouncingArrow({super.key});

  @override
  BouncingArrowState createState() => BouncingArrowState();
}

class BouncingArrowState extends State<BouncingArrow> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -30 * _animation.value),
          child: child,
        );
      },
      child: SvgPicture.asset('assets/img/icons/arrow_down.svg', height: 48,),
    );
  }
}