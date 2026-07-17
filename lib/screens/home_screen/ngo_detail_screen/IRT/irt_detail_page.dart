import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/community_development/community_development.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/education_and_training/education_and_training.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/health/health.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/irt_content.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/social_welfare/irt_social_welfare.dart';

class IRTProfileScreen extends StatelessWidget {
  const IRTProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: const Text(
          'Ideal Relief Trust',
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
              color: ColorClass.primaryColor,
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
                        IRTContent.logo,
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
                    IRTContent.masawatDescription,
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
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.3,
                children: const [
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Social Welfare',
                    icon: LucideIcons.users,
                    child: IRTHealthcareServicesScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Community Development',
                    icon: LucideIcons.home,
                    child: CommunityDevelopmentScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Education and Training',
                    icon: LucideIcons.graduationCap,
                    child: IRTEducationTrainingServicesScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Health',
                    icon: LucideIcons.heart,
                    child: IRTHealthScreen(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            //Images Grid
          ],
        ),
      ),
    );
  }
}

