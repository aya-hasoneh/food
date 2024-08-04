import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/board_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(1, 1),
    ).animate(_controller!);

    _controller!.forward();

    Future.delayed(const Duration(seconds: 10), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BoardScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller!,
          child: Container(),
          builder: (context, child) {
            double angle = _controller!.value * 2 * pi;
            double radius = 100;
            double x = radius * cos(angle);
            double y = radius * sin(angle);
            return Transform.translate(
                offset: Offset(x, y), child: Image.asset("images/logo.png"));
          },
        ),
      ), //SlideTransition(position: _animation!,child: Image.asset("images/logo.png"))),
    );
  }
}
