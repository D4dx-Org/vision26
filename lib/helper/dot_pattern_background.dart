import 'package:flutter/material.dart';

/// Clips card content to the rounded corners and paints a subtle accent
/// arc in the bottom-right corner.
class DotPatternBackground extends StatelessWidget {
  final Color color;
  final Widget child;
  final BorderRadius borderRadius;

  const DotPatternBackground({
    super.key,
    required this.color,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _CornerDecoration(color: color.withOpacity(0.06)),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class _CornerDecoration extends CustomPainter {
  final Color color;

  _CornerDecoration({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas.drawCircle(
      Offset(size.width + 40, size.height + 40),
      90,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _CornerDecoration oldDelegate) =>
      oldDelegate.color != color;
}
