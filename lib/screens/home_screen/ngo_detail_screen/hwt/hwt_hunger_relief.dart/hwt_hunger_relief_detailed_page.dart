import 'package:flutter/material.dart';
import 'package:vision_2026/constants/color_class.dart';

class ProjectDetails {
  final String title;
  final String description;
  final String coverImage;
  final List<String> galleryImages;
  final Map<String, String> impactStats;

  ProjectDetails({
    required this.title,
    required this.description,
    required this.coverImage,
    required this.galleryImages,
    required this.impactStats,
  });
}

class ProjectDetailPage extends StatelessWidget {
  final ProjectDetails projectDetails;

  const ProjectDetailPage({
    super.key,
    required this.projectDetails,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cover Image
            Stack(
              children: [
                Image.asset(
                  projectDetails.coverImage,
                  height: isMobile ? 200 : 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: isMobile ? 200 : 300,
                  color: ColorClass.primaryColor.withOpacity(0.6),
                ),
                Positioned(
                  left: 20,
                  top: 40,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    projectDetails.title,
                    style: TextStyle(
                      fontSize: isMobile ? 28 : 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            // Project Description
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the Project',
                        style: TextStyle(
                          fontSize: isMobile ? 20 : 24,
                          fontWeight: FontWeight.bold,
                          color: ColorClass.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        projectDetails.description,
                        style: TextStyle(
                          fontSize: isMobile ? 14 : 16,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Gallery
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: isMobile ? 20 : 24,
                      fontWeight: FontWeight.bold,
                      color: ColorClass.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isMobile ? 2 : 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: projectDetails.galleryImages.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          projectDetails.galleryImages[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Impact Stats
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                color: Colors.red[50],
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Impact',
                        style: TextStyle(
                          fontSize: isMobile ? 20 : 24,
                          fontWeight: FontWeight.bold,
                          color: ColorClass.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: projectDetails.impactStats.entries
                            .map((entry) => _buildStatItem(
                                  entry.key,
                                  entry.value,
                                  isMobile,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value, bool isMobile) {
    return Container(
      width: isMobile ? double.infinity : 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: ColorClass.primaryColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: isMobile ? 24 : 28,
              fontWeight: FontWeight.bold,
              color: ColorClass.primaryColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 14 : 16,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
