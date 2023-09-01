import 'package:flutter/material.dart';

class CurvedTabBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 30); // Start from the top-left corner
    path.quadraticBezierTo(0, 0, 30, 0); // Create the top-left curve
    path.lineTo(
        size.width - 30, 0); // Draw the straight line to the top-right curve
    path.quadraticBezierTo(
        size.width, 0, size.width, 30); // Create the top-right curve
    path.lineTo(size.width, size.height); // Draw the bottom-right corner
    path.lineTo(0, size.height); // Draw the bottom-left corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
