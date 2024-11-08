import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class CommunityLearningCenterScreen extends StatelessWidget {
  const CommunityLearningCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFF1565C0),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Community Learning Center',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Vision 2026',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
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
          children: [
            // Center Image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://0e1f9520cfbb74a61ba4-0c2137d93f8d1ba7abe4c5e2888a558f.ssl.cf1.rackcdn.com/145839435857114.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Philosophy Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
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
                    child: Column(
                      children: [
                        const Icon(
                          LucideIcons.school,
                          size: 40,
                          color: Color(0xFF1565C0),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "CLC's philosophy aligns with three key UN Sustainable Development Goals: No Poverty, Zero Hunger, and Quality Education. CLCs reduce poverty by educating students and providing employability skills. They support child health with nutritious meals and focus on educating out-of-school children in slums.",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Colors.grey[800],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // UN Goals
                  Row(
                    children: [
                      _buildGoalCard(
                        icon: LucideIcons.home,
                        title: 'No Poverty',
                      ),
                      const SizedBox(width: 12),
                      _buildGoalCard(
                        icon: LucideIcons.apple,
                        title: 'Zero Hunger',
                      ),
                      const SizedBox(width: 12),
                      _buildGoalCard(
                        icon: LucideIcons.graduationCap,
                        title: 'Quality Education',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Handle center visit request
        },
        backgroundColor: const Color(0xFF1565C0),
        icon: const Icon(LucideIcons.mapPin, color: Colors.white),
        label: const Text(
          'Visit Center',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildGoalCard({
    required IconData icon,
    required String title,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 28,
              color: const Color(0xFF1565C0),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
