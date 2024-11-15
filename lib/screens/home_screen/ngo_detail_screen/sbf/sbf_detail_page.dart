import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/rehabitilation_work/rehabitilation_work.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_management/disaster_categories.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/disaster_ready_model_village/disaster_ready_category.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/sbf_content.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/training_programs/training_categories.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sbf/volunteer_engagement/volunteer_categories.dart';

class SBFProfileScreen extends StatelessWidget {
  const SBFProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        elevation: 0,
        title: const Text(
          'Society for Bright Future',
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
                        SBFContent.logo,
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
                    SBFContent.description,
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
                crossAxisCount: 4,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.3,
                children: const [
                  InterventionAreaCard(
                    title: 'Disaster Management',
                    icon: LucideIcons.alertTriangle,
                    child: DisasterCategoryList(),
                  ),
                  InterventionAreaCard(
                    title: 'Volunteer\'s Engagement',
                    icon: LucideIcons.users,
                    child: VolunteerCategoriesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Training Programs',
                    icon: LucideIcons.graduationCap,
                    child: TrainingCategoriesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Project Rahat',
                    icon: LucideIcons.heart,
                    child: CycloneDetailScreen(
                      title: 'PROJECT RAHAT (WINTER RELIEF PROJECT)',
                      content:
                          'Under Project Rahat, the Society for Bright Future has distributed approximately 300,000 blankets to over 15,00,000 beneficiaries across more than 19 states in northern India over the past decade.',
                      images: [
                        'assets/images/sbf/3 D SUB IMAGE (2).jpg',
                        'assets/images/sbf/3 D SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    title: 'Disaster Ready Model Village',
                    icon: LucideIcons.home,
                    child: DisasterReadyCategoryScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Khushiyon Ke Libas',
                    icon: LucideIcons.smile,
                    child: CycloneDetailScreen(
                      title: 'KHUSHION KE LIBAS',
                      content:
                          'The "Khushion Ke Libas" Cloth Distribution Program by the Society for Bright Future aims to provide new clothing items to economically disadvantaged individuals and families during festive seasons. ',
                      images: [
                        'assets/images/sbf/3 F SUB IMAGE (1).JPG',
                        'assets/images/sbf/3 F SUB IMAGE (2).JPG',
                        'assets/images/sbf/3 F SUB IMAGE (3).jpg',
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    title: 'Rehabitilation work',
                    icon: LucideIcons.recycle,
                    child: RehabitilationWorkCategoryScreen(),
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
                  color: ColorClass.primaryColor,
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
