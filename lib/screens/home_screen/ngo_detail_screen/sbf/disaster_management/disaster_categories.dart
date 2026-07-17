import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/covid_disaster_detail.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/cyclone_disaster_detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/flood_disaster_detail.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/landslide_disaster_detail.dart';

class DisasterCategoryList extends StatelessWidget {
  const DisasterCategoryList({super.key});

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
                          'Disaster Management',
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
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildListDelegate([
                const InterventionAreaCard(
                  title: 'CYCLONE',
                  icon: LucideIcons.wind,
                  accentColor: Color(0xFFB71C1C),
                  child: CycloneDisasterDetailScreen(
                    title: 'Cyclone Management',
                    code: "#cyclone",
                    description:
                        'The volunteers of the Society for Bright Future have actively responded to numerous cyclones, demonstrating their commitment to disaster relief and resilience. Notable responses include:',
                    icon: LucideIcons.wind,
                  ),
                ),
                const InterventionAreaCard(
                  title: 'FLOOD',
                  icon: LucideIcons.droplets,
                  accentColor: Color(0xFFB71C1C),
                  child: FloodDisasterDetailScreen(
                    title: 'Flood Management',
                    code: "#flood",
                    description:
                        'The volunteers of the Society for Bright Future have responded to numerous devastating floods across states of North India & South India. Notable responses include:',
                    icon: LucideIcons.droplets,
                  ),
                ),
                const InterventionAreaCard(
                  title: 'LANDSLIDE',
                  icon: LucideIcons.mountain,
                  accentColor: Color(0xFFB71C1C),
                  child: LandSlideDisasterDetailScreen(
                    title: 'Landslide Management',
                    code: "#landslide",
                    description:
                        'The volunteers of the Society for Bright Future have responded to numerous incidents of landslides across states of North India & South India. Notable responses include:',
                    icon: LucideIcons.mountain,
                  ),
                ),
                const InterventionAreaCard(
                  title: 'COVID-19\nPHASE 1 & 2',
                  icon: LucideIcons.apple,
                  accentColor: Color(0xFFB71C1C),
                  child: CovidDisasterDetailScreen(
                    title: 'COVID-19 Response',
                    code: "#covid",
                    description:
                        'During COVID-19 phases 1 and 2, the Society for Bright Future set up help desks at 50 locations across six states, reaching 119,681 beneficiaries. The SBF provided 7,035 oxygen cylinders, 64 plasma units, 170 hospital beds, and 19,140 masks and sanitizers. Additionally, 30,480 temperature and oxygen checks, 78,000 public awareness initiatives, and helped in 64 burial services',
                    icon: LucideIcons.apple,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

}
