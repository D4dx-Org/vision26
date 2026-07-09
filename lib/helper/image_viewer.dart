import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ImageViewerScreen extends StatelessWidget {
  final String imagePath;
  final List<String> imagePaths;
  final List<String>? captions;
  final int currentIndex;

  const ImageViewerScreen({
    super.key,
    required this.imagePath,
    required this.imagePaths,
    this.captions,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        behavior: HitTestBehavior
            .translucent, // Add this to ensure gestures are caught
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0 && currentIndex > 0) {
            // Previous image
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => ImageViewerScreen(
                  imagePath: imagePaths[currentIndex - 1],
                  imagePaths: imagePaths,
                  captions: captions,
                  currentIndex: currentIndex - 1,
                ),
                transitionDuration: Duration.zero,
              ),
            );
          } else if (details.primaryVelocity! < 0 &&
              currentIndex < imagePaths.length - 1) {
            // Next image
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => ImageViewerScreen(
                  imagePath: imagePaths[currentIndex + 1],
                  imagePaths: imagePaths,
                  captions: captions,
                  currentIndex: currentIndex + 1,
                ),
                transitionDuration: Duration.zero,
              ),
            );
          }
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Image
            InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            // Back Button
            Positioned(
              top: MediaQuery.of(context).padding.top + 8,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    LucideIcons.arrowLeft,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),

            // Caption and Image Counter
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (captions != null &&
                      currentIndex < captions!.length &&
                      captions![currentIndex].isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          captions![currentIndex],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${currentIndex + 1} / ${imagePaths.length}',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
