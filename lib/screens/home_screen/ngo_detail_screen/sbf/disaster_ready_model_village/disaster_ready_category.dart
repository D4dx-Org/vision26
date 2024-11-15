import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

class DisasterReadyCategoryScreen extends StatelessWidget {
  const DisasterReadyCategoryScreen({super.key});

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
                            '#disaster',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'DISASTER READY MODEL VILLAGE (DRMV)',
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
                  title: 'COMMUNITY OUTREACH',
                  child: const CycloneDetailScreen(
                    title: 'COMMUNITY OUTREACH',
                    content:
                        'Under Project DRMV, the Society for Bright Future has adopted villages across Bihar, West Bengal, and Assam to strengthen disaster risk reduction and resilience. Through this initiative, SBF conducts specialized training programs, forms community groups, and installs highland hand pumps and bamboo bridges, empowering local communities with essential infrastructure and skills to mitigate disaster impacts effectively.',
                    images: [
                      'assets/images/sbf/3 E 1 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 E 1 SUB IMAGE (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'BFIRST AID TRAINING',
                  child: const CycloneDetailScreen(
                    title: 'FIRST AID TRAINING',
                    content: '',
                    images: [
                      'assets/images/sbf/3 E 2 (a) SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 E 2 (a) SUB IMAGE (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'CAPACITY BUILDING',
                  child: const CycloneDetailScreen(
                    title: 'CAPACITY BUILDING',
                    content: '',
                    images: [
                      'assets/images/sbf/3 E 2 (b) SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 E 2 (b) SUB IMAGE (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'WATER & SANITATION HYGIENE PROGRAM',
                  child: const CycloneDetailScreen(
                    title: 'WATER & SANITATION HYGIENE PROGRAM',
                    content: '',
                    images: [
                      'assets/images/sbf/3 E 4 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 E 4 SUB IMAGE (2).jpg',
                    ],
                  ),
                ),
                _buildCycloneCard(
                  context,
                  title: 'SELF HELP GROUP (SHG)',
                  child: const CycloneDetailScreen(
                    title: 'SELF HELP GROUP (SHG)',
                    content: '',
                    images: [
                      'assets/images/sbf/3 E 5 SUB IMAGE (1).jpg',
                      'assets/images/sbf/3 E 5 SUB IMAGE (2).jpg',
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
