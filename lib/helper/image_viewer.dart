import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ImageViewerScreen extends StatelessWidget {
  final String imagePath;

  const ImageViewerScreen({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Image
          Center(
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

          // Back Button
          Positioned(
            top: 40,
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
        ],
      ),
    );
  }
}
