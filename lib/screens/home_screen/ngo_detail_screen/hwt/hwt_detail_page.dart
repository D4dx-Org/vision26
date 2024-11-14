import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/constants/image_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/economic_empowerment/economic_empowerment.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/education/hwt_education_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/healthcare/hwt_health_care_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/hwt_content.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/hwt_hunger_relief.dart/hwt_hunger_relief.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/low_cost_housing/low_cost_housing.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/orphan_and_widow/orphan_and_widow_care.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/water_sanitation/water_sanitation.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/winter_relief/winter_relief.dart';

class HWTProfileScreen extends StatelessWidget {
  const HWTProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        title: const Text(
          'Human Welfare Trust',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Organization Header
            Container(
              color: const Color(0xFFB71C1C),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
              child: Column(
                children: [
                  // Logo
                  Container(
                    width: 190,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        ImageClass.hwtLogo,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Mission Statement
            Transform.translate(
              offset: const Offset(0, -20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Text(
                    HWTAppContent.hwfdescription,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // Core Intervention Areas Header
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Core Intervention Areas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Intervention Areas Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.3,
                children: const [
                  InterventionAreaCard(
                    title: 'HealthCare',
                    icon: LucideIcons.heartPulse,
                    child: HWTHealthcareServicesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Hunger Relief',
                    icon: LucideIcons.utensilsCrossed,
                    child: HWTHungerReliefPage(),
                  ),
                  InterventionAreaCard(
                    title: 'Education',
                    icon: LucideIcons.graduationCap,
                    child: HWTEducationServicesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Orphan and Widow Care',
                    icon: LucideIcons.users,
                    child: OrphanWidowCareScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Economic Empowerment',
                    icon: LucideIcons.dollarSign,
                    child: EconomicEmpowermentScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Low-Cost Housing',
                    icon: LucideIcons.home,
                    child: LowCostHousingScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Water and Sanitaion',
                    icon: LucideIcons.droplet,
                    child: WaterSanitationScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Winter Relief',
                    icon: LucideIcons.snowflake,
                    child: WinterReliefScreen(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class InterventionAreaCard extends StatelessWidget {
  final String title;
  final IconData icon;

  final Widget child;

  const InterventionAreaCard({
    super.key,
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
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
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            navigateTo(context: context, route: child);
          },
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 32,
                  color: const Color(0xFFB71C1C),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                // Text(
                //   code,
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Colors.grey[600],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
