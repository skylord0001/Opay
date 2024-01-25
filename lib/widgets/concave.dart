import 'package:flutter/material.dart';

class ConCaveContainer extends StatelessWidget {
  const ConCaveContainer({
    Key? key,
    required this.child,
    this.bottomRight = 0.0,
    this.bottomLeft = 0.0,
    this.topRight = 0.0,
    this.topLeft = 0.0,
    this.decoration = const BoxDecoration(),
  }) : super(key: key);
  final double bottomRight;
  final double bottomLeft;
  final double topRight;
  final double topLeft;
  final Container child;
  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ConCaveClipper(
        bottomRight: bottomRight,
        bottomLeft: bottomLeft,
        topRight: topRight,
        topLeft: topLeft,
      ),
      child: Container(
        decoration: decoration,
        child: child,
      ),
    );
  }
}

class ConCaveClipper extends CustomClipper<Path> {
  ConCaveClipper({
    required this.bottomRight,
    required this.bottomLeft,
    required this.topRight,
    required this.topLeft,
  });
  final double bottomRight;
  final double bottomLeft;
  final double topRight;
  final double topLeft;
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, bottomLeft)
      ..arcToPoint(
        Offset(bottomLeft, 0),
        radius: Radius.circular(bottomLeft),
        clockwise: false,
      )
      ..lineTo(size.width - topRight, 0)
      ..arcToPoint(
        Offset(size.width, topRight),
        radius: Radius.circular(topRight),
        clockwise: false,
      )
      ..lineTo(size.width, size.height - bottomRight)
      ..arcToPoint(
        Offset(size.width - bottomRight, size.height),
        radius: Radius.circular(bottomRight),
        clockwise: false,
      )
      ..lineTo(topLeft, size.height)
      ..arcToPoint(
        Offset(0, size.height - topLeft),
        radius: Radius.circular(topLeft),
        clockwise: false,
      )
      ..lineTo(0, size.height);

    print(bottomLeft);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
