import 'package:flutter/material.dart';

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child, this.color_star,this.color_end});
  final Widget child;
  var color_star;
  var color_end;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [color_star, color_end],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}