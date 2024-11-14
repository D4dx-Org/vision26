import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class LowCostHousingScreen extends StatelessWidget {
  const LowCostHousingScreen({super.key});

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
                            '#Housing',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Low-Cost Housing',
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
                            'Building safe and low-cost houses for families in need particularly those affected by flood, ensuring they have a secure roof over their heads.',
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

                    // Statistics Section
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
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
                          Text(
                            'As of September 2024, HWT has:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: _buildStatistic(
                                  number: '100',
                                  label:
                                      'Low-cost houses built for poor and flood-affected people',
                                  color: const Color(0xFFB71C1C),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: _buildStatistic(
                                  number: '35',
                                  label:
                                      'Houses repaired across various states',
                                  color: const Color(0xFFB71C1C),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Images Grid
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First row - 2 images
                          Row(
                            children: [
                              Expanded(
                                  child: _buildImageCard(
                                      "assets/images/hwt/Page-3 F_sub image 1.jpg")),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: _buildImageCard(
                                      "assets/images/hwt/Page-3 F_sub image 2.jpeg")),
                              const SizedBox(width: 16),
                              Expanded(
                                  child: _buildImageCard(
                                "assets/images/hwt/Page-3 F_sub image 3.png",
                              )),
                            ],
                          ),
                          const SizedBox(height: 16),
                          // Single image with caption
                          // Container(
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(16),
                          //     boxShadow: [
                          //       BoxShadow(
                          //         color: Colors.black.withOpacity(0.1),
                          //         blurRadius: 10,
                          //         offset: const Offset(0, 2),
                          //       ),
                          //     ],
                          //   ),
                          //   child: Column(
                          //     children: [
                          //       ClipRRect(
                          //         borderRadius: const BorderRadius.vertical(
                          //           top: Radius.circular(16),
                          //         ),
                          //         child: Image.asset(
                          //           "assets/images/hwt/Page-3 F_sub image 3.png",
                          //           fit: BoxFit.cover,
                          //           width: double.infinity,
                          //         ),
                          //       ),
                          //       Container(
                          //         padding: const EdgeInsets.all(12),
                          //         decoration: const BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.vertical(
                          //             bottom: Radius.circular(16),
                          //           ),
                          //         ),
                          //         child: const Text(
                          //           'Assam Flood Rehabilitation - Gobardhana, Barpeta',
                          //           style: TextStyle(
                          //             fontSize: 14,
                          //             color: Colors.grey,
                          //           ),
                          //           textAlign: TextAlign.center,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
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

  Widget _buildStatistic({
    required String number,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
