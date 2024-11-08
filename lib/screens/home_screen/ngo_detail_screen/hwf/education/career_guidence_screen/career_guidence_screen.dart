import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/career_guidence_screen/career_guidence_detail_screen/career_guidence_detail_screen.dart';

class CareerGuidanceScreen extends StatelessWidget {
  const CareerGuidanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header with Image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://dashboard.careernaksha.com/uploads/Career_Naksha_Career_Counselling_693f07d5a6.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              title: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Career Guidance & Coaching',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFF1565C0),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Mission Statement
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: const Offset(0, -10),
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
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Text(
                  'Career Guidance & Coaching is one of the promising initiatives under Human Welfare Foundation. This initiative places a strong emphasis on reaching out to marginalized and underprivileged communities, enabling them to progress towards higher education and training opportunities.',
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

          // CTAG Section
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildSectionTitle(
                      'Centre for Training and Academic Guidance (CTAG)'),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(20),
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
                    child: Text(
                      'CTAG is an initiative designed to offer comprehensive career guidance and counselling programs nationwide. The project focuses primarily on marginalized communities, aiming to empower them with the necessary tools and resources to pursue higher education and vocational training, thus helping them progress towards a brighter future.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Programs Grid
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _buildProgramCard(
                  title: 'Training Center',
                  subtitle: 'Kolkata',
                  icon: LucideIcons.school2,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Coaching Center',
                  subtitle: 'WBCS',
                  icon: LucideIcons.graduationCap,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Career Guidance',
                  subtitle: 'Counselling',
                  icon: LucideIcons.compass,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Training Programs',
                  subtitle: 'Skill Development',
                  icon: LucideIcons.briefcase,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Career Web Portal',
                  subtitle: 'Online Resources',
                  icon: LucideIcons.globe2,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Career Newsletter',
                  subtitle: 'Monthly Updates',
                  icon: LucideIcons.mailCheck,
                  child: const TrainingCenterDetailScreen(),
                  context: context,
                ),
              ]),
            ),
          ),

          // Success Stories
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSectionTitle('Success Stories'),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => _buildSuccessStoryCard(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Handle counselling session booking
        },
        backgroundColor: const Color(0xFF1565C0),
        icon: const Icon(
          LucideIcons.calendar,
          color: Colors.white,
        ),
        label: const Text(
          'Book Counselling Session',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildProgramCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required BuildContext context,
    required Widget child,
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
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1565C0).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: const Color(0xFF1565C0),
                    size: 32,
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
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
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

  Widget _buildSuccessStoryCard() {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16),
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
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://mindlerimages.imgix.net/tinyimg/PranavVashishth.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Success Story',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'From guidance to achievement',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
