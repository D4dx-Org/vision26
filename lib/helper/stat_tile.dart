import 'package:flutter/material.dart';
import 'package:vision_2026/helper/dot_pattern_background.dart';

/// Modern replacement for flat icon+value+label statistic cards
/// (plain white box, no depth) used across NGO detail "stats" grids.
class StatTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color accentColor;

  const StatTile({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    // Shadow lives on the OUTER container so it is not clipped by the
    // dot-pattern's ClipRRect.
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: accentColor.withOpacity(0.10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
          BoxShadow(
            color: accentColor.withOpacity(0.12),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: DotPatternBackground(
        color: accentColor,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.10),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 20, color: accentColor),
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: accentColor,
                ),
              ),
              const SizedBox(height: 2),
              Flexible(
                child: Text(
                  label,
                  style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
