import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  final Widget child;
  final Function onPressed;
  final bool isLoading;
  final Color color;
  final Key? buttonKey;

  const LoadingButton({super.key, required this.child, required this.onPressed, required this.isLoading, required this.color, this.buttonKey});

  @override
  State<StatefulWidget> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: false);
    _animation = TweenSequence<double>([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 1.06), weight: 1 / 4),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.06, end: 1), weight: 1 / 4),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 0.9), weight: 1 / 4),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: .9, end: 1), weight: 1 / 4),
    ]).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Transform.scale(
        scaleX: widget.isLoading ? _animation.value : 1,
        child: child,
      ),
      child: ElevatedButton(
        key: widget.buttonKey,
        style: ButtonStyle(
          backgroundColor: widget.isLoading ? WidgetStateProperty.all<Color>(widget.color.withAlpha(242)) : WidgetStateProperty.all<Color>(widget.color),
        ),
        onPressed: widget.isLoading ? null : () => widget.onPressed(),
        child: widget.child,
      ),
    );
  }
}
