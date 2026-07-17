import 'package:flutter/material.dart';
import 'package:vision_2026/helper/dot_pattern_background.dart';
import 'package:vision_2026/helper/navigation_helper.dart';

/// Modern replacement for the flat white icon+title cards (plain shadow,
/// bare icon) used across NGO detail "Core Intervention Areas" grids.
class InterventionAreaCard extends StatefulWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final Color accentColor;
  final bool enabled;

  /// Optional illustration asset used as a full-bleed background behind
  /// centered content.
  final String? backgroundImage;

  /// Optional illustration asset shown across the top of the card, with the
  /// icon badge + title in a white footer row below it.
  final String? topImage;

  /// When false (with [topImage]), the footer shows the title only — no icon.
  final bool showIcon;

  const InterventionAreaCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
    required this.accentColor,
    this.enabled = true,
    this.backgroundImage,
    this.topImage,
    this.showIcon = true,
  });

  @override
  State<InterventionAreaCard> createState() => _InterventionAreaCardState();
}

class _InterventionAreaCardState extends State<InterventionAreaCard> {
  double _scale = 1;

  void _setScale(double value) => setState(() => _scale = value);

  @override
  Widget build(BuildContext context) {
    final color = widget.enabled ? widget.accentColor : Colors.grey;
    return GestureDetector(
      onTapDown: widget.enabled ? (_) => _setScale(0.96) : null,
      onTapUp: widget.enabled ? (_) => _setScale(1) : null,
      onTapCancel: widget.enabled ? () => _setScale(1) : null,
      onTap: widget.enabled
          ? () => navigateTo(context: context, route: widget.child)
          : null,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        // Shadow lives on the OUTER container so it is not clipped by the
        // dot-pattern's ClipRRect.
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: DotPatternBackground(
            color: color,
            borderRadius: BorderRadius.circular(20),
            child: widget.topImage != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          widget.topImage!,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 14),
                        child: Row(
                          children: [
                            if (widget.showIcon) ...[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: color.withOpacity(0.10),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  widget.icon,
                                  size: 20,
                                  color: color,
                                ),
                              ),
                              const SizedBox(width: 12),
                            ],
                            Expanded(
                              child: Text(
                                widget.title,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: widget.showIcon
                                    ? TextAlign.start
                                    : TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: widget.enabled
                                      ? Colors.black87
                                      : Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : widget.backgroundImage == null
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.10),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            widget.icon,
                            size: 24,
                            color: color,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Flexible(
                          child: Text(
                            widget.title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: widget.enabled
                                  ? Colors.black87
                                  : Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                : Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        widget.backgroundImage!,
                        fit: BoxFit.cover,
                      ),
                      // Scrim for text legibility over the image.
                      Container(color: Colors.white.withOpacity(0.55)),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                widget.icon,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              widget.title,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: widget.enabled
                                    ? Colors.black87
                                    : Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
