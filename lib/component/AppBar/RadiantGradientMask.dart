import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child, this.colorStart,this.colorEnd});
  final Widget child;
  var colorStart;
  var colorEnd;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [colorStart, colorEnd],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}