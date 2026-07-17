import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/image_viewer.dart';

/// Modern replacement for the plain 2-column image GridView used
/// across NGO detail "Gallery" sections.
class GalleryGrid extends StatelessWidget {
  final List<String> images;
  final int crossAxisCount;
  final double spacing;

  const GalleryGrid({
    super.key,
    required this.images,
    this.crossAxisCount = 2,
    this.spacing = 12,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: 1,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _GalleryTile(
          image: images[index],
          heroTag: '${images[index]}_$index',
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageViewerScreen(
                imagePath: images[index],
                currentIndex: index,
                imagePaths: images,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _GalleryTile extends StatefulWidget {
  final String image;
  final String heroTag;
  final VoidCallback onTap;

  const _GalleryTile({
    required this.image,
    required this.heroTag,
    required this.onTap,
  });

  @override
  State<_GalleryTile> createState() => _GalleryTileState();
}

class _GalleryTileState extends State<_GalleryTile> {
  double _scale = 1;

  void _setScale(double value) => setState(() => _scale = value);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _setScale(0.96),
      onTapUp: (_) => _setScale(1),
      onTapCancel: () => _setScale(1),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 16,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              tag: widget.heroTag,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[300],
                      child: const Icon(
                        LucideIcons.imageOff,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.30),
                          ],
                          stops: const [0.6, 1],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        LucideIcons.expand,
                        size: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
