import 'package:flutter/material.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

// Main Cyclone List Screen
class CycloneDisasterDetailScreen extends StatelessWidget {
  final String title;
  final String code;
  final String description;
  final IconData icon;

  const CycloneDisasterDetailScreen({
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
                    'The volunteers of the Society for Bright Future have actively responded to numerous cyclones, demonstrating their commitment to disaster relief and resilience. Notable responses include:',
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
                    title: 'FANI (2019)',
                    child: const CycloneDetailScreen(
                      title: 'FANI (2019)',
                      content:
                          'During Cyclone Fani in 2019, the Society for Bright Future supported Odisha by distributing ration kits to 1,000 families (benefiting 5,000 individuals) and providing tarpaulins to 2,000 families (assisting 10,000 individuals). Aid was extended across five districts, covering a total of 38 locations within those areas.',
                      images: [
                        'assets/images/sbf/3 A 1 (a) SUB IMAGE 1 (1).jpg',
                        'assets/images/sbf/3 A 1 (a) SUB IMAGE 1 (2).jpg',
                        'assets/images/sbf/3 A 1 (a) SUB IMAGE 1 (3).jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'AMPHAN (2020)',
                    child: const CycloneDetailScreen(
                      title: 'AMPHAN (2020)',
                      content:
                          'During Cyclone Amphan in 2020, the Society for Bright Future provided critical support to affected communities in West Bengal, distributing ration kits and tarpaulins. Covering 289 locations across six impacted districts, the relief efforts reached a total of 15,671 beneficiaries, offering essential aid and shelter during a time of crisis.',
                      images: [
                        'assets/images/sbf/3 A 1 (b) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 1 (b) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 1 (b) SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'TAUKTAE (2021)',
                    child: const CycloneDetailScreen(
                      title: 'TAUKTAE (2021)',
                      content:
                          'During Cyclone Tauktae in 2021, the Society for Bright Future provided critical aid to affected communities in Gujarat. They served cooked meals to 1,000 individuals, distributed ration kits to 100 families (benefiting 500 people), and repaired homes for 200 families (1,000 people), reaching a total of 2,500 beneficiaries with essential support and relief.',
                      images: [
                        'assets/images/sbf/3 A 1 (c) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 1 (c) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 1 (c) SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'YAAS (2021)',
                    child: const CycloneDetailScreen(
                      title: 'YAAS (2021)',
                      content:
                          'In response to Cyclone Yaas in 2021, the Society for Bright Future supported cyclone-affected communities in West Bengal by distributing ration kits to 200 families, benefiting 1,000 individuals. This timely assistance provided essential relief to those in need, showcasing the organization’s commitment to disaster response.',
                      images: [
                        'assets/images/sbf/3 A 1 (d) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 1 (d) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 1 (d) TITLE IMAGE.jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'BIPORJOY (2023)',
                    child: const CycloneDetailScreen(
                      title: 'BIPORJOY (2023)',
                      content:
                          'In response to Cyclone Biparjoy, the Society for Bright Future extended vital support to cyclone-affected communities in Gujarat, distributing essential supplies to those in need. This initiative benefited a total of 1,000 individuals, highlighting SBF’s dedication to providing timely relief in disaster-stricken areas.',
                      images: [
                        'assets/images/sbf/3 A 1 (e) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 1 (e) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 1 (e) SUB IMAGE (3).jpg',
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
