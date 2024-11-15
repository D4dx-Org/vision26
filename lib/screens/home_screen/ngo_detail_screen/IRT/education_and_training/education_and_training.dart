import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/education_and_training/education_training_detailed.dart';

class IRTEducationTrainingServicesScreen extends StatelessWidget {
  const IRTEducationTrainingServicesScreen({super.key});

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
                      LucideIcons.stethoscope,
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
                            '#education',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Education & Training',
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
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate(
                [
                  _buildServiceCard(
                    context: context,
                    title: 'Awareness Program for Imam & Muazzins',
                    icon: LucideIcons.mic,
                    description:
                        'Empowering community leaders for peace and prosperity.',
                    child: const IRTEducationTrainingServiceDetail(
                      title: 'Awareness Program for Imam & Muazzins',
                      code: "#awareness",
                      description:
                          'Ideal Relief Trust honored Islamic scholars and reputed leaders of the Community centers to discuss the role of Ulmas and Community leaders in strengthen of our community towards the peace and prosperity in accordance with our divine laws. ',
                      imagePath: "assets/images/irt/image14.jpg",
                      icon: LucideIcons.mic,
                      galleryImages: [
                        "assets/images/irt/image14.jpg",
                        "assets/images/irt/image15.jpg",
                        'assets/images/irt/image16.jpg',
                        'assets/images/irt/image17.jpg',
                      ],
                    ),
                  ),
                  _buildServiceCard(
                    context: context,
                    title: 'Computer Training for Emam & Muazzins',
                    icon: LucideIcons.monitor,
                    description:
                        'Digital literacy courses for community leaders.',
                    child: const IRTEducationTrainingServiceDetail(
                      title: 'Computer Training for Emam & Muazzins',
                      code: "#digital_literacy",
                      description:
                          'Ideal Relief Trust start Computer training courses on Digital literacy and digital marketing exclusively free for Emam & Muazzin. Its successful experiment in Delhi. We trying to start this program in other states like Haryana, West Bengal, Bihar & Rajasthan InshaAllah',
                      imagePath: "assets/images/irt/image20.jpg",
                      icon: LucideIcons.monitor,
                      galleryImages: [
                        'assets/images/irt/image18.jpg',
                        'assets/images/irt/image19.jpg',
                        'assets/images/irt/image20.jpg',
                        'assets/images/irt/image21.jpg',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required IconData icon,
    required String description,
    required Widget child,
    required BuildContext context,
  }) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            navigateTo(context: context, route: child);
          },
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB71C1C).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: const Color(0xFFB71C1C),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
