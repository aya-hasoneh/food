import 'package:flutter/material.dart';

class AnimationArrow extends StatefulWidget {
  const AnimationArrow({Key? key}) : super(key: key);

  @override
  State<AnimationArrow> createState() => _AnimationArrowState();
}

class _AnimationArrowState extends State<AnimationArrow>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(seconds: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (_, child) {
        return ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            transform:
                _SlideGradientTransform(percent: animationController!.value),
            colors: const [Colors.white10, Colors.white, Colors.white10],
          ).createShader(bounds),
          child: const Column(
            children: [
              Align(
                heightFactor: .4,
                child: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
              Align(
                heightFactor: .4,
                child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
              ),
              Align(
                heightFactor: .4,
                child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SlideGradientTransform extends GradientTransform {
  double? percent;

  _SlideGradientTransform({required this.percent});
  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(0, bounds.height * percent!, 0);
  }
}
