import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 9, dashSpace = 5, startX = 0;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
    startX = 0;
    startY = size.height;
    while (startX < size.width) {
      canvas.drawLine(
          Offset(startX, startY), Offset(startX + dashWidth, startY), paint);
      startX += dashWidth + dashSpace;
    }
    startX = size.width;
    startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
          Offset(startX, startY), Offset(startX, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
