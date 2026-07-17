import 'package:flutter/material.dart';
import 'package:vision_2026/helper/gallery_grid.dart';

class CycloneDetailScreen extends StatelessWidget {
  final String title;
  final String content;
  final List<String> images;

  const CycloneDetailScreen({
    super.key,
    required this.title,
    required this.content,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFB71C1C),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Container(
              color: const Color(0xFFB71C1C),
              padding: const EdgeInsets.all(24),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  if (images.isNotEmpty) ...[
                    const SizedBox(height: 24),
                    const Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB71C1C),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GalleryGrid(images: images),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
