import 'package:flutter/material.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

// Main Cyclone List Screen
class LandSlideDisasterDetailScreen extends StatelessWidget {
  final String title;
  final String code;
  final String description;
  final IconData icon;

  const LandSlideDisasterDetailScreen({
    super.key,
    required this.title,
    required this.code,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFFB71C1C),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              color: const Color(0xFFB71C1C),
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      title.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'The volunteers of the Society for Bright Future have responded to numerous incidents of landslides across states of North India & South India. Notable responses include:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // List of Cyclones
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  _buildCycloneCard(
                    context,
                    title: 'JOSHIMATH, UTTARAKHAND (2022)',
                    child: const CycloneDetailScreen(
                      title: 'JOSHIMATH, UTTARAKHAND (2022)',
                      content:
                          'In response to the 2022 Joshi math landslide in Uttarakhand, the Society for Bright Future provided essential supplies to support 500 affected individuals. Through timely assistance and dedicated efforts, the organization extended relief to those in need, reflecting its commitment to disaster relief and community support in challenging times.',
                      images: [
                        'assets/images/sbf/3 A 3 (a) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 3 (a) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 3 (a) TITLE IMAGE.jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'WAYANAD, KERALA (2024)',
                    child: const CycloneDetailScreen(
                      title: 'WAYANAD, KERALA (2024)',
                      content:
                          'Following the recent landslide in Wayanad, Kerala (2024), the Society for Bright Future, in collaboration with the Ideal Relief Wing (IRW), initiated extensive search and rescue operations. These efforts provided critical assistance and relief to over 1,000 affected individuals, underscoring a steadfast commitment to community welfare and rapid disaster response.',
                      images: [
                        'assets/images/sbf/3 A 3 (b) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 3 (b) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 3 (b) SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
