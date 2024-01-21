import 'package:flutter/material.dart';

class ConatinerWidget extends StatelessWidget {
  const ConatinerWidget(
      {super.key,
      this.color = const Color.fromARGB(255, 240, 240, 240),
      required this.child,
      this.padding = 0});
  final double padding;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double cutWidth = MediaQuery.of(context).size.width * 0.05;
    return Container(
      padding: EdgeInsets.only(left: padding + 2.0, right: padding + 2.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(((deviceWidth - cutWidth) / 25)),
        ),
        padding: padding == 0
            ? EdgeInsets.only(left: padding + 3.0, right: padding + 3.0)
            : EdgeInsets.all(padding + 3.0),
        child: child,
      ),
    );
  }
}
