import 'package:flutter/material.dart';

class ConatinerWidget extends StatelessWidget {
  const ConatinerWidget({
    super.key,
    this.color = const Color.fromARGB(255, 240, 240, 240),
    required this.child,
    this.paddingExtSides = 0,
    // this.paddingExtTopDown = 0,
    this.paddingIntSides = 0,
    this.paddingIntTopDown = 0,
    this.margin = const EdgeInsets.all(0),
    this.gradient = const LinearGradient(colors: [Colors.white, Colors.white]),
  });
  final double paddingExtSides;
  // final double paddingExtTopDown;
  final double paddingIntSides;
  final double paddingIntTopDown;
  final Color color;
  final Widget child;
  final LinearGradient gradient;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double cutWidth = MediaQuery.of(context).size.width * 0.05;
    return Container(
      margin: margin,
      padding: EdgeInsets.only(
          left: paddingExtSides + 2.0, right: paddingExtSides + 2.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient ==
                  const LinearGradient(colors: [Colors.white, Colors.white])
              ? LinearGradient(colors: [color, color])
              : gradient,
          borderRadius: BorderRadius.circular(((deviceWidth - cutWidth) / 25)),
        ),
        padding: EdgeInsets.only(
          left: paddingIntSides != 0 ? paddingIntSides + 3.0 : 0,
          right: paddingIntSides != 0 ? paddingIntSides + 3.0 : 0,
          top: paddingIntTopDown,
          bottom: paddingIntTopDown,
        ),
        child: child,
      ),
    );
  }
}
