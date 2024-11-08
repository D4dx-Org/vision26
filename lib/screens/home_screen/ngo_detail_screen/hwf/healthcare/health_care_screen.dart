import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/healthcare/health_care_service_detail_screen.dart';

class HealthcareServicesScreen extends StatelessWidget {
  const HealthcareServicesScreen({super.key});

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
                      LucideIcons.stethoscope,
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
                            '#Healthcare',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Healthcare Services',
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
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Mission Statement
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -3),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Text(
                  'The Human Welfare Foundation is committed to improving the health and well-being of communities facing significant healthcare challenges. Through a variety of health and nutrition initiatives, we take a holistic approach to addressing the critical medical needs of vulnerable populations, ensuring lasting impact and meaningful change.',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceCard(
                  context: context,
                  title: 'Medical Centres',
                  icon: LucideIcons.building2,
                  description: 'Providing comprehensive healthcare services',
                  child: const HealthcareServiceDetail(
                      title: 'Medical Centres',
                      code: "#MedicalCentres",
                      description:
                          'Providing comprehensive healthcare services',
                      imagePath:
                          "https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/155/kovai-medical-center-hospital-coimbatore.jpg",
                      icon: LucideIcons.building2),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Mobile Medical Vans',
                  icon: LucideIcons.heartPulse,
                  description: 'Healthcare services at your doorstep',
                  child: const HealthcareServiceDetail(
                      title: 'Medical Centres',
                      code: "#MedicalCentres",
                      description:
                          'Providing comprehensive healthcare services',
                      imagePath:
                          "https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/155/kovai-medical-center-hospital-coimbatore.jpg",
                      icon: LucideIcons.building2),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Ambulance Service',
                  icon: LucideIcons.truck,
                  description: '24/7 emergency medical transportation',
                  child: const HealthcareServiceDetail(
                      title: 'Medical Centres',
                      code: "#MedicalCentres",
                      description:
                          'Providing comprehensive healthcare services',
                      imagePath:
                          "https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/155/kovai-medical-center-hospital-coimbatore.jpg",
                      icon: LucideIcons.building2),
                ),
                _buildServiceCard(
                  title: 'Medical Camps',
                  icon: LucideIcons.tent,
                  description: 'Free medical & vaccination camps',
                  child: const HealthcareServiceDetail(
                      title: 'Medical Centres',
                      code: "#MedicalCentres",
                      description:
                          'Providing comprehensive healthcare services',
                      imagePath:
                          "https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/155/kovai-medical-center-hospital-coimbatore.jpg",
                      icon: LucideIcons.building2),
                  context: context,
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Health Awareness',
                  icon: LucideIcons.megaphone,
                  description: 'Community health education programs',
                  child: const HealthcareServiceDetail(
                      title: 'Medical Centres',
                      code: "#MedicalCentres",
                      description:
                          'Providing comprehensive healthcare services',
                      imagePath:
                          "https://avocure-uploads.s3.amazonaws.com/uploads/clinic/cover_pic_url/155/kovai-medical-center-hospital-coimbatore.jpg",
                      icon: LucideIcons.building2),
                ),
              ]),
            ),
          ),

          // Bottom Spacing
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required IconData icon,
    required String description,
    required Widget child,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
        child: InkWell(
          onTap: () {
            navigateTo(context: context, route: child);
          },
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB71C1C).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: const Color(0xFFB71C1C),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
