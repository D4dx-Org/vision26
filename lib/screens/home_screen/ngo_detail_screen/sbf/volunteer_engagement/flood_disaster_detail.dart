import 'package:flutter/material.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';

// Main Cyclone List Screen
class FloodDisasterDetailScreen extends StatelessWidget {
  final String title;
  final String code;
  final String description;
  final IconData icon;

  const FloodDisasterDetailScreen({
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
                    'The volunteers of the Society for Bright Future have responded to numerous devastating floods across states of North India & South India. Notable responses include:',
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
                    title: 'BIHAR FLOOD (2017 & 2019)',
                    child: const CycloneDetailScreen(
                      title: 'BIHAR FLOOD (2017 & 2019)',
                      content:
                          'In response to the Bihar Floods, the Society for Bright Future, in collaboration with Model Village Trust, distributed ration kits to 1,000 families (benefiting 5,000 individuals) affected by the 2017 flood. In the 2019 floods, SBF extended its support by providing ration kits and tarpaulin sets to another 1,000 families. Additionally, a medical relief camp was organized, benefiting 1,000 individuals, reflecting SBF’s comprehensive disaster relief efforts.',
                      images: [
                        'assets/images/sbf/3 A 2 (a) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 2 (a) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 2 (a) SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'ASSAM FLOOD (2016,2018,2019,2022,2023 & 2024)',
                    child: const CycloneDetailScreen(
                      title: 'ASSAM FLOOD (2016,2018,2019,2022,2023 & 2024)',
                      content:
                          'In response to the Assam floods from 2016 to 2024, the Society for Bright Future (SBF) provided essential relief to flood-affected communities. In 2016, SBF built 100 temporary huts for 500 people across two villages. In 2018, they distributed ration kits, mosquito nets, and clothes to 5,000 individuals in two districts. In 2019, SBF extended aid to 5,000 people, organized a medical camp for 1,000 people, and rescued 1,000 individuals. In 2022, they reached 33,000 people with food, water, and medical support. Aid continued in 2023 and 2024, benefiting 1,000 and 65,520 individuals, respectively, demonstrating SBF\'s unwavering commitment to disaster relief.',
                      images: [
                        'assets/images/sbf/3 A 2 (b) SUB IMAGE (1).jpeg',
                        'assets/images/sbf/3 A 2 (b) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 2 (b) SUB IMAGE (2).jpeg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title: 'KERALA FLOOD (2018)',
                    child: const CycloneDetailScreen(
                      title: 'KERALA FLOOD (2018)',
                      content:
                          'In response to the 2018 Kerala floods, the Society for Bright Future provided critical support to 500 flood-affected families (about 2,500 individuals) by distributing essential sanitation and hygiene kits, ration supplies, and cleaning items. This initiative aimed to aid recovery, ensuring health, hygiene, and basic sustenance for the impacted communities.',
                      images: [
                        'assets/images/sbf/3 A 2 (c) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 2 (c) SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 A 2 (c) SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildCycloneCard(
                    context,
                    title:
                        'JAMNAGAR (GUJARAT) & CHIPLUN MAHARASHTRA FLOOD (2021)',
                    child: const CycloneDetailScreen(
                      title:
                          'JAMNAGAR (GUJARAT) & CHIPLUN MAHARASHTRA FLOOD (2021)',
                      content:
                          'In response to the 2021 floods in Jamnagar (Gujarat) and Chiplun (Maharashtra), the Society for Bright Future (SBF) provided essential relief, distributing cooked food, cleaning supplies, ration kits, and blankets, aiding 29,000 flood-affected individuals in Chiplun alone. Additionally, SBF repaired homes for 120 families (600 people) and helped 127 families (635 people) rebuild their livelihoods, impacting a total of 1,235 individuals. In the 2023 Gujarat floods, SBF extended support to 3,500 people, showcasing a continued commitment to disaster relief.',
                      images: [
                        'assets/images/sbf/3 A 2 (d) SUB IMAGE (1).jpeg',
                        'assets/images/sbf/3 A 2 (d) SUB IMAGE (1).jpg',
                        'assets/images/sbf/3 A 2 (d) SUB IMAGE (2).jpeg',
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
