import 'package:flutter/material.dart';
import 'package:vision_2026/helper/dot_pattern_background.dart';

/// Modern replacement for flat text-only chip/pill cards
/// (plain white box, no depth) used across NGO detail "list" grids.
class PillTile extends StatelessWidget {
  final String text;
  final Color accentColor;
  final VoidCallback? onTap;

  const PillTile({
    super.key,
    required this.text,
    required this.accentColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Shadow lives on the OUTER container so it is not clipped by the
    // dot-pattern's ClipRRect.
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentColor.withOpacity(0.10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: accentColor.withOpacity(0.12),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: DotPatternBackground(
        color: accentColor,
        borderRadius: BorderRadius.circular(16),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
