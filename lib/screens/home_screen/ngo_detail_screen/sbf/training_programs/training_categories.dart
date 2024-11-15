import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/covid_disaster_detail.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/cyclone_disaster_detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/flood_disaster_detail.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/landslide_disaster_detail.dart';

class TrainingCategoriesScreen extends StatelessWidget {
  const TrainingCategoriesScreen({super.key});

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
                            '#training',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Training Programs',
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
                childAspectRatio: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildListDelegate([
                _buildCycloneCard(
                  context,
                  title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                    content:
                        'The National Advanced Training program, organized by the Society for Bright Future, accommodates a total of 60 participants. Spanning 60 hours, the training is conducted over six consecutive days, providing an intensive and enriching experience designed to enhance skills and foster personal growth.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (1).JPG',
                      'assets/images/sbf/3 C 2 SUB IMAGE (2).JPG',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'STATE LEVEL TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'STATE LEVEL TRAINING & WORKSHOP',
                    content:
                        'The State Training program, organized by the Society for Bright Future, accommodates up to 50 participants. With a total duration of 18 hours, the training is conducted continuously over two days, offering a focused and immersive learning experience aimed at skill enhancement and professional development.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (6).jpg',
                      'assets/images/sbf/3 C 2 SUB IMAGE (7).jpg',
                      'assets/images/sbf/3 C 2 TITLE IMAGE.jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'DISTRICT LEVEL TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'DISTRICT LEVEL TRAINING & WORKSHOP',
                    content:
                        'The District Training program, organized by the Society for Bright Future, accommodates up to 30 participants. With a duration of 6 hours, this one-day training offers a concentrated and impactful learning experience, designed to equip participants with essential skills and knowledge for effective community engagement.',
                    images: [
                      'assets/images/sbf/3 C  3 TITLE IMAGE.jpg',
                      'assets/images/sbf/3 C 3 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 C 3 SUB IMAGE (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                    content:
                        'The National Advanced Training program, organized by the Society for Bright Future, accommodates a total of 60 participants. Spanning 60 hours, the training is conducted over six consecutive days, providing an intensive and enriching experience designed to enhance skills and foster personal growth.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (1).JPG',
                      'assets/images/sbf/3 C 2 SUB IMAGE (2).JPG',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'DISASTER MANAGEMENT INTRODUCTION',
                  child: const CycloneDetailScreen(
                    title: 'DISASTER MANAGEMENT INTRODUCTION',
                    content:
                        'The Society for Bright Future offers a comprehensive, three-level training program, with diverse modules that equip trainees with valuable insights. Through these modules, participants develop essential skills, enhancing their readiness to respond effectively to disasters. This structured approach ensures that each level progressively builds expertise, fostering a well-rounded, capable network of disaster response professionals.',
                    images: [
                      'assets/images/sbf/DISASTER MANAGEMENT INTRODUCTION (1).jpg',
                      'assets/images/sbf/DISASTER MANAGEMENT INTRODUCTION (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'ORIENTATION ON DISASTER MANAGEMENT',
                  child: const CycloneDetailScreen(
                    title: 'ORIENTATION ON DISASTER MANAGEMENT',
                    content:
                        'The Society for Bright Future offers a comprehensive, three-level training program, with diverse modules that equip trainees with valuable insights. Through these modules, participants develop essential skills, enhancing their readiness to respond effectively to disasters. This structured approach ensures that each level progressively builds expertise, fostering a well-rounded, capable network of disaster response professionals.',
                    images: [
                      'assets/images/sbf/ORIENTATION ON DISASTER MANAGEMENT (1).jpg',
                      'assets/images/sbf/ORIENTATION ON DISASTER MANAGEMENT (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'TRAINING ON FIRST AID',
                  child: const CycloneDetailScreen(
                    title: 'TRAINING ON FIRST AID',
                    content:
                        'The Society for Bright Future offers a comprehensive, three-level training program, with diverse modules that equip trainees with valuable insights. Through these modules, participants develop essential skills, enhancing their readiness to respond effectively to disasters. This structured approach ensures that each level progressively builds expertise, fostering a well-rounded, capable network of disaster response professionals.',
                    images: [
                      'assets/images/sbf/TRAINING ON FIRST AID (1).jpg',
                      'assets/images/sbf/TRAINING ON FIRST AID (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                    content:
                        'The National Advanced Training program, organized by the Society for Bright Future, accommodates a total of 60 participants. Spanning 60 hours, the training is conducted over six consecutive days, providing an intensive and enriching experience designed to enhance skills and foster personal growth.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (1).JPG',
                      'assets/images/sbf/3 C 2 SUB IMAGE (2).JPG',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                    content:
                        'The National Advanced Training program, organized by the Society for Bright Future, accommodates a total of 60 participants. Spanning 60 hours, the training is conducted over six consecutive days, providing an intensive and enriching experience designed to enhance skills and foster personal growth.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (1).JPG',
                      'assets/images/sbf/3 C 2 SUB IMAGE (2).JPG',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                  child: const CycloneDetailScreen(
                    title: 'NATIONAL ADVANCE TRAINING & WORKSHOP',
                    content:
                        'The National Advanced Training program, organized by the Society for Bright Future, accommodates a total of 60 participants. Spanning 60 hours, the training is conducted over six consecutive days, providing an intensive and enriching experience designed to enhance skills and foster personal growth.',
                    images: [
                      'assets/images/sbf/3 C 2 SUB IMAGE (1).JPG',
                      'assets/images/sbf/3 C 2 SUB IMAGE (2).JPG',
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
