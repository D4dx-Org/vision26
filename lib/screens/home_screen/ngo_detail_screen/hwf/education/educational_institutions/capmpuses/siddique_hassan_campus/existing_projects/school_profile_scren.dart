// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

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
                    image!,
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
              onPressed: () => Navigator.pop(
                context,
              ),
            ),
            // actions: [
            //   IconButton(
            //     icon: const Icon(LucideIcons.share2),
            //     onPressed: () {
            //       // Share functionality
            //     },
            //   ),
            //   const SizedBox(width: 8),
            // ],
          ),

          // Quick Info Cards
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Row(
          //       children: [
          //         _buildInfoCard(
          //           icon: LucideIcons.users,
          //           title: 'Students',
          //           value: '500+',
          //         ),
          //         const SizedBox(width: 16),
          //         _buildInfoCard(
          //           icon: LucideIcons.school2,
          //           title: 'Grade Range',
          //           value: '10-12',
          //         ),
          //         const SizedBox(width: 16),
          //         _buildInfoCard(
          //           icon: LucideIcons.bookOpen,
          //           title: 'Programs',
          //           value: '3',
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

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
                  // const Row(
                  //   children: [
                  //     Icon(
                  //       LucideIcons.info,
                  //       color: Color(0xFFB71C1C),
                  //       size: 24,
                  //     ),
                  //     SizedBox(width: 12),
                  //     Text(
                  //       'About the Institution',
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.bold,
                  //         color: Color(0xFFB71C1C),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  const SizedBox(height: 16),
                  Text(
                    description!,
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

          // Features Section
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 16),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Padding(
          //           padding: EdgeInsets.symmetric(vertical: 16),
          //           child: Text(
          //             'Features & Facilities',
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.black87,
          //             ),
          //           ),
          //         ),
          //         GridView.count(
          //           shrinkWrap: true,
          //           physics: const NeverScrollableScrollPhysics(),
          //           crossAxisCount: 3,
          //           mainAxisSpacing: 16,
          //           crossAxisSpacing: 16,
          //           childAspectRatio: 1,
          //           children: [
          //             _buildFeatureCard(
          //               icon: LucideIcons.building2,
          //               title: 'Modern Campus',
          //             ),
          //             _buildFeatureCard(
          //               icon: LucideIcons.bookOpen,
          //               title: 'Library',
          //             ),
          //             _buildFeatureCard(
          //               icon: LucideIcons.laptop2,
          //               title: 'Computer Lab',
          //             ),
          //             _buildFeatureCard(
          //               icon: LucideIcons.bed,
          //               title: 'Hostel',
          //             ),
          //             _buildFeatureCard(
          //               icon: LucideIcons.utensils,
          //               title: 'Cafeteria',
          //             ),
          //             _buildFeatureCard(
          //               icon: LucideIcons.playCircle,
          //               title: 'Play Ground',
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

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
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 2,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
                        itemCount: imageList!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 160,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imageList![index],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    child: const Icon(
                                      LucideIcons.imageOff,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Admission inquiry
      //   },
      //   backgroundColor: const Color(0xFFB71C1C),
      //   icon: const Icon(
      //     LucideIcons.clipboardCheck,
      //     color: Colors.white,
      //   ),
      //   label: const Text(
      //     'Admission Inquiry',
      //     style: TextStyle(
      //       fontSize: 16,
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xFFB71C1C),
              size: 24,
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB71C1C),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color(0xFFB71C1C),
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
