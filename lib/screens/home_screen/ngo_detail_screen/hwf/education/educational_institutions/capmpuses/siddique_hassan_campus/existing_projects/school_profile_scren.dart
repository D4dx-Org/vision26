import 'package:flutter/material.dart';
import 'package:vision_2026/helper/gallery_grid.dart';

class SchoolProfileScreen extends StatelessWidget {
  final String? image;
  final String? schoolName;
  final String? description;
  final List? imageList;

  const SchoolProfileScreen(
      {super.key,
      this.image,
      this.schoolName,
      this.description,
      this.imageList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Large Header with School Image
          SliverAppBar(
            toolbarHeight: 80,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    image ?? imageList!.cast<String>().first,
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
                ],
              ),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schoolName!,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // About Section
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    description ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Gallery Section
          if (imageList != null)
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(16),
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
                    GalleryGrid(images: [...imageList!.cast<String>()]),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
