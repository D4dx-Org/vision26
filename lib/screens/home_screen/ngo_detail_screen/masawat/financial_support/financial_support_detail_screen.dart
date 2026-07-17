import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/helper/dot_pattern_background.dart';
import 'package:vision_2026/helper/gallery_grid.dart';
import 'package:vision_2026/helper/image_viewer.dart';

class MasawatFinancialDetailScreen extends StatelessWidget {
  final String title;
  final String code;
  final String description;
  final String imagePath;
  final IconData icon;
  final List<String> features;
  final List<String> stats;
  final List<String> galleryImages;

  const MasawatFinancialDetailScreen({
    super.key,
    required this.title,
    required this.code,
    required this.description,
    required this.imagePath,
    required this.icon,
    this.features = const [],
    this.stats = const [],
    this.galleryImages = const [],
  });

  void _openImageViewer(BuildContext context, String imagePath) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageViewerScreen(
          imagePath: imagePath,
          currentIndex: 0,
          imagePaths: [imagePath],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Image Header
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => _openImageViewer(context, imagePath),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            code,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              icon,
                              color: Colors.white,
                              size: 24,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFFB71C1C),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: ColorClass.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              IconButton(
                icon: const Icon(LucideIcons.share2),
                onPressed: () {
                  // Share functionality
                },
              ),
              const SizedBox(width: 8),
            ],
          ),

          // Content
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Quick Stats
                if (stats.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 2.0,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: stats.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: ColorClass.primaryColor,
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: ColorClass.primaryColor.withOpacity(0.30),
                              blurRadius: 14,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: DotPatternBackground(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 4),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  stats[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
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
                  ),

                // Description
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey[800],
                    ),
                  ),
                ),

                // Key Features
                if (features.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Key Features',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...features
                            .map((feature) => _buildFeatureItem(feature)),
                      ],
                    ),
                  ),

                // Gallery
                if (galleryImages.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gallery',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 16),
                        GalleryGrid(images: galleryImages),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          const Icon(
            LucideIcons.checkCircle2,
            color: Color(0xFFB71C1C),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
