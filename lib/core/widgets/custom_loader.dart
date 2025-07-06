import 'package:flutter/material.dart';

class CustomLoader extends StatefulWidget {
  const CustomLoader({super.key});

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: SweepGradient(
            colors: const [
              Colors.white,
              Colors.grey,
              Colors.black,
              Colors.transparent,
              Colors.white,
            ],
            startAngle: 0.0,
            endAngle: 3.14 * 2,
            stops: const [0.0, 0.3, 0.6, 0.9, 1.0],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color(0xFF171717),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
