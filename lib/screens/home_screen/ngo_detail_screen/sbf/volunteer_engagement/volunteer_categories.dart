import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

class VolunteerCategoriesScreen extends StatelessWidget {
  const VolunteerCategoriesScreen({super.key});

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
                      LucideIcons.alertTriangle,
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
                            '#volunteers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Volunteer Engagement',
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

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildListDelegate([
                _buildCycloneCard(
                  context,
                  title: 'GENERAL HEALTH CAMP',
                  child: const CycloneDetailScreen(
                    title: 'GENERAL HEALTH CAMP',
                    content:
                        'A total of 78+ General Health Camps have benefited over 18,174 individuals. These camps offer essential healthcare services, including health screenings, consultations, and primary medical support, aiming to improve health outcomes in underserved communities.',
                    images: [
                      'assets/images/sbf/3 B 1 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 1 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 1 SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'BLOOD & PLASMA DONATION',
                  child: const CycloneDetailScreen(
                    title: 'BLOOD & PLASMA DONATION',
                    content:
                        'The Society for Bright Future (SBF) has organized over 124 blood and plasma donation camps, collecting more than 4,753 units. These camps support life-saving efforts by ensuring a steady supply of blood and plasma for those in need.',
                    images: [
                      'assets/images/sbf/3 B 2 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 2 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 2 SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'TREE FOR LIFE (PLANTATION PROGRAM)',
                  child: const CycloneDetailScreen(
                    title: 'TREE FOR LIFE (PLANTATION PROGRAM)',
                    content:
                        'The Society for Bright Future (SBF) has conducted over 248 Tree for Life plantation programs, planting more than 30,662 saplings. This initiative aims to promote environmental sustainability and combat climate change by increasing green cover.',
                    images: [
                      'assets/images/sbf/3 B 3 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 3 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 3 SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: '	HAR QADAM SWACHHTA KI OR',
                  child: const CycloneDetailScreen(
                    title: '	HAR QADAM SWACHHTA KI OR',
                    content:
                        'The Society for Bright Future has organized 237 "Har Qadam Swachhta Ki Or" programs, impacting over 18,960 individuals. These initiatives aim to instill the importance of cleanliness and hygiene within communities, fostering a healthier and cleaner environment for all.',
                    images: [
                      'assets/images/sbf/3 B 4 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 4 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 4 SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'DE ADICTION AWRENESS PROGRAM',
                  child: const CycloneDetailScreen(
                    title: 'DE ADICTION AWRENESS PROGRAM',
                    content:
                        'The Society for Bright Future has successfully conducted 20 De-addiction Awareness Programs, reaching and benefiting over 3,577 individuals. Through these initiatives, the organization is dedicated to spreading awareness about the importance of a healthy, addiction-free lifestyle, empowering communities to make positive choices for their well-being and future.',
                    images: [
                      'assets/images/sbf/3 B 5 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 5 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 5 TITLE IMAGE.jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'EARTHQUAKE AWARENESS PROGRAM',
                  child: const CycloneDetailScreen(
                    title: 'EARTHQUAKE AWARENESS PROGRAM',
                    content:
                        'The Society for Bright Future has conducted 160 Earthquake Awareness Programs, benefiting over 11,600 individuals. These programs are designed to educate communities on earthquake preparedness, equipping them with essential knowledge and skills to respond effectively and reduce risks, fostering a safer and more resilient society.',
                    images: [
                      'assets/images/sbf/3 B 6 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 6 SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 6 SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'FIRE FIGHTING AWRAENESS PROGRAM',
                  child: const CycloneDetailScreen(
                    title: 'FIRE FIGHTING AWRAENESS PROGRAM',
                    content:
                        'The Society for Bright Future has organized 80 Firefighting Awareness Programs, reaching and benefiting more than 8,600 individuals. These initiatives aim to educate communities on fire safety and prevention, empowering people with essential skills and knowledge to respond effectively in emergencies and enhance overall safety.',
                    images: [
                      'assets/images/sbf/3 B 7 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 7 SUB IMAGE (2).jpg',
                      '',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'TRAFFIC RULE AWARENESS PROGRAM',
                  child: const CycloneDetailScreen(
                    title: 'TRAFFIC RULE AWARENESS PROGRAM',
                    content:
                        'The Society for Bright Future has conducted 120 Traffic Awareness Programs, benefiting over 9,000 individuals. These programs are focused on promoting road safety and responsible driving practices, empowering communities with essential knowledge to reduce accidents and create safer roads for all.',
                    images: [
                      'assets/images/sbf/3 B 8  SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 B 8  SUB IMAGE (2).jpg',
                      'assets/images/sbf/3 B 8  SUB IMAGE (3).jpg',
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCycloneCard(
    BuildContext context, {
    required String title,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => navigateTo(context: context, route: child),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB71C1C),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFB71C1C),
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
