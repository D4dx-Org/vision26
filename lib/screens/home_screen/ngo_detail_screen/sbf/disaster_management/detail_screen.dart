import 'package:flutter/material.dart';
import 'package:vision_2026/helper/image_viewer.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 260,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    images.isNotEmpty ? images[0] : 'assets/default_image.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    right: 24,
                    bottom: 40,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ),
          if (images.isNotEmpty)
            SliverPadding(
              padding: const EdgeInsets.all(24),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageViewerScreen(
                            imagePath: images[index],
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  childCount: images.length,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
