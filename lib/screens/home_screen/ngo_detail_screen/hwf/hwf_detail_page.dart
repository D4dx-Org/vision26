import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/constants/image_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/education_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/general_detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/healthcare/health_care_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class NGOProfileScreen extends StatelessWidget {
  const NGOProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        title: const Text(
          'Human Welfare Foundation',
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
                        ImageClass.hwfLogo,
                        fit: BoxFit.cover,
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
                    HwfContent.hwfdescription,
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
                    title: 'Education',
                    icon: LucideIcons.graduationCap,
                    child: EducationServicesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Healthcare',
                    icon: LucideIcons.stethoscope,
                    child: HealthcareServicesScreen(),
                  ),
                  InterventionAreaCard(
                    title: 'Orphan Care',
                    icon: LucideIcons.heart,
                    child: GeneralDetailScreen(
                      title: "ORPHAN CARE PROGRAM",
                      description:
                          "The Orphan Care Program is dedicated to addressing the essential needs of children who require care and protection. Since 2009, we have been striving to improve the quality of life for children who have lost one or both parents, through a holistic and compassionate approach.",
                      imagePath: HwfContent.other1,
                      subPoints: [
                        'Orphan Scholarship Program',
                        'Orphan Hostels'
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    title: 'Government Scheme\nFacilitation Center',
                    icon: LucideIcons.building,
                    child: GeneralDetailScreen(
                      title: 'Government Scheme\nFacilitation Center',
                      description:
                          "Nagrik Vikas Kendra (NVK) serves as a bridge between government schemes and marginalized communities, helping ensure that the benefits of these programs reach those in need.\n\n43 NVKs are functioning in 12 States. \n\nIn the last financial year, NVKs assisted beneficiaries in securing a collective total of ₹44 crore through various government schemes.",
                      imagePath: HwfContent.other2,
                      subPoints: [
                        '43 NVKs',
                        'In 12 States',
                        "Govt. Scheme worth ₹44 crore secured"
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    title: 'Vocational Training',
                    icon: LucideIcons.briefcase,
                    child: GeneralDetailScreen(
                      title: 'Vocational Training',
                      description:
                          "Human Welfare Foundation's skill development and vocational training initiatives aim to empower underprivileged communities by enhancing their technical skills, increasing employability, and fostering opportunities for employment and entrepreneurship. These training centers are strategically established in some of the country's most underdeveloped regions. Major courses run are various computer courses and Assistant Nursing & Midwifery.",
                      imagePath: HwfContent.other3,
                      subPoints: [
                        "Innovation and Skill Training Centers in 6 States"
                      ],
                    ),
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
