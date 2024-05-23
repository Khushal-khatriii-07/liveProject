// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBall extends StatelessWidget {
  final List<Color> colors;
  final Size size;
  final AlignmentGeometry alignmentBegin;
  final AlignmentGeometry alignmentEnd;
  const GradientBall({
    Key? key,
    required this.colors,
    this.size = const Size.square(150), required this.alignmentBegin, required this.alignmentEnd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: alignmentBegin,
          end: alignmentEnd,
          colors: colors,
        ),
      ),
    );
  }
}