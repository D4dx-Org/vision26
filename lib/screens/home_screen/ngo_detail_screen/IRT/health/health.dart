// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IRTHealthScreen extends StatelessWidget {
  const IRTHealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Gradient and Title
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Gradient Background
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFD32F2F),
                          Color(0xFFB71C1C),
                        ],
                      ),
                    ),
                  ),
                  // Tag and Title
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
                          child: const Text(
                            '#health',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'HEALTH',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Description
                    Container(
                      margin: const EdgeInsets.all(24),
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
                        children: [
                          const Icon(
                            LucideIcons.home,
                            size: 40,
                            color: Color(0xFFB71C1C),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Ideal Relief Trust is planning to provide financial assistance to needy and indigent individuals specially Imam and Muazzins to cover the costs of medical treatments.',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.grey[800],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    // Images Section
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Expanded(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: _buildImageCard(
                    //                 "assets/images/irt/image39.jpg",
                    //                 aspectRatio: 4 / 3,
                    //               ),
                    //             ),
                    //           ),
                    //           Expanded(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: _buildImageCard(
                    //                 "assets/images/irt/image40.jpg",
                    //                 aspectRatio: 4 / 3,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       const SizedBox(height: 8),
                    //       Row(
                    //         children: [
                    //           Expanded(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: _buildImageCard(
                    //                 "assets/images/irt/image11.jpg",
                    //                 aspectRatio: 4 / 3,
                    //               ),
                    //             ),
                    //           ),
                    //           Expanded(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: _buildImageCard(
                    //                 "assets/images/irt/image13.jpg",
                    //                 aspectRatio: 4 / 3,
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageCard(String imagePath, {double aspectRatio = 4 / 3}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
