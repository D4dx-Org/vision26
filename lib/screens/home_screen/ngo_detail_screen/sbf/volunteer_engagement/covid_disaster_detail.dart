import 'package:flutter/material.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

// Main Cyclone List Screen
class CovidDisasterDetailScreen extends StatelessWidget {
  final String title;
  final String code;
  final String description;
  final IconData icon;

  const CovidDisasterDetailScreen({
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
                    'During COVID-19 phases 1 and 2, the Society for Bright Future set up help desks at 50 locations across six states, reaching 119,681 beneficiaries. The SBF provided 7,035 oxygen cylinders, 64 plasma units, 170 hospital beds, and 19,140 masks and sanitizers. Additionally, 30,480 temperature and oxygen checks, 78,000 public awareness initiatives, and helped in 64 burial services',
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
                    title: 'COVID – 19 (PHASE 1 & PHASE 2)',
                    child: const CycloneDetailScreen(
                      title: 'COVID – 19 (PHASE 1 & PHASE 2)',
                      content:
                          'During COVID-19 phases 1 and 2, the Society for Bright Future set up help desks at 50 locations across six states, reaching 119,681 beneficiaries. The SBF provided 7,035 oxygen cylinders, 64 plasma units, 170 hospital beds, and 19,140 masks and sanitizers. Additionally, 30,480 temperature and oxygen checks, 78,000 public awareness initiatives, and helped in 64 burial services',
                      images: [
                        'assets/images/sbf/3 A 4  SUB IMAGE (2).jpeg',
                        'assets/images/sbf/3 A 4  SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 4  SUB IMAGE (3).jpeg',
                        'assets/images/sbf/3 A 4 TITLE IMAGE.jpg',
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
