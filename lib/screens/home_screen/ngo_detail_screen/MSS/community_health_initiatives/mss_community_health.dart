import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';

class MSSCommunityHealthPage extends StatelessWidget {
  const MSSCommunityHealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header with Gradient
          SliverAppBar(
            expandedHeight: 260,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
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
                  Positioned(
                    right: -100,
                    top: -100,
                    child: Icon(
                      LucideIcons.graduationCap,
                      size: 300,
                      color: Colors.white.withOpacity(0.1),
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
                          child: const Text(
                            '#communityhealth',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'COMMUNITY HEALTH INITIATIVES',
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
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Mission Statement
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -3),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      'Implementing programs aimed at improving public health and awareness.\nTotal beneficiaries in medical camps – 24,567\nTotal no. of blood units collected during blood donation camp – 10,254',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                        color: Colors.grey[800],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildListDelegate([
                _buildImageWithCaption(
                  "assets/images/MSS/3 C (i).jpg",
                  " ",
                ),
                _buildImageWithCaption(
                  "assets/images/MSS/3 C (ii).jpg",
                  " ",
                ),
                _buildImageWithCaption(
                  "assets/images/MSS/3 C (iii).jpg",
                  " ",
                ),
                _buildImageWithCaption(
                  "assets/images/MSS/3 C (iv).jpg",
                  " ",
                ),
              ]),
            ),
          ),

          // Bottom Spacing
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithCaption(String imagePath, String caption) {
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
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}