import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/advocacy_for_ethical_practices/mss_advocacy.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/community_health_initiatives/mss_community_health.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/emergency_medical_services/mss_emergency.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/healthcare_education_and_training/mss_healthcare.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/mss_content.dart';

class MSSProfileScreen extends StatelessWidget {
  const MSSProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: const Text(
          'Medical Service Society',
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
                        MSSContent.logo,
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
                    MSSContent.masawatDescription,
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
                childAspectRatio: 1,
                children: const [
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Emergency Medical Services',
                    icon: LucideIcons.truck,
                    child: MSSEmergencyPage(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Healthcare Education and Training',
                    icon: LucideIcons.bookOpen,
                    child: MSSHealthCarePage(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Community Health Initiatives',
                    icon: LucideIcons.graduationCap,
                    child: MSSCommunityHealthPage(),
                  ),
                  InterventionAreaCard(
                    accentColor: ColorClass.primaryColor,
                    title: 'Advocacy for Ethical Practices',
                    icon: LucideIcons.graduationCap,
                    child: MSSAdvocacyPage(),
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

