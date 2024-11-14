import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/siddique_hassan_campus/existing_projects/school_profile_scren.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class SiddiqueHassanCampus extends StatelessWidget {
  const SiddiqueHassanCampus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Parallax Header with Campus Aerial View
          SliverAppBar(
            toolbarHeight: 80,
            expandedHeight: 300,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    HwfContent.siddiqueHassanCampus,
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
                    'Siddique Hassan Campus',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mewat, Haryana',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFFB71C1C),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Campus Overview
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'A Developing Education Hub',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB71C1C),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "The campus is in Marora village, Nuh district, Mewat, Haryana, spanning 24 acres. Nuh, in the Mewat region, is the least developed district in Haryana and the only area from the state listed among NITI Aayog's 101 most underdeveloped districts in India, holding one of the lowest rankings. The Human Welfare Foundation aims to make this campus a central hub for empowerment initiatives in the region.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Existing Projects Section
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFB71C1C),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Existing Projects',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.3,
                    children: [
                      _buildProjectCard(
                        title: 'Al Jamia Senior Secondary School',
                        icon: LucideIcons.graduationCap,
                        context: context,
                        child: const SchoolProfileScreen(
                          schoolName: 'Al Jamia Senior Secondary School',
                          imageList: [
                            HwfContent.siddiqueHassanCampus1_1,
                            HwfContent.siddiqueHassanCampus1_2,
                            HwfContent.siddiqueHassanCampus1_3,
                            HwfContent.siddiqueHassanCampus1_4,
                            HwfContent.siddiqueHassanCampus1_5,
                            HwfContent.siddiqueHassanCampus1_6,
                          ],
                          description:
                              'This institution serves as an off-campus center of Al Jamia Al Islamia, a prestigious Islamic institution based in Santhapuram, Kerala.  Students are admitted into the residential program after completing the 10th grade and continue their education here through to a bachelor’s degree, with a curriculum that includes comprehensive knowledge in Islamic studies.',
                          image: HwfContent.siddiqueHassanCampus1,
                        ),
                      ),
                      _buildProjectCard(
                        title: 'UG & PG College',
                        icon: LucideIcons.building2,
                        context: context,
                        child: const SchoolProfileScreen(
                            schoolName: 'UG & PG College',
                            description:
                                "The UG and PG College offers a variety of undergraduate and postgraduate courses, affiliated with recognized universities. Comprehensive facilities, including hostels, are already in place to support student needs.",
                            image: HwfContent.siddiqueHassanCampus5),
                      ),
                      _buildProjectCard(
                        title: 'Chirag Public School (Hindi Medium)',
                        icon: LucideIcons.school,
                        context: context,
                        child: const SchoolProfileScreen(
                          schoolName: 'Chirag Public School (Hindi Medium)',
                          description:
                              "Chirag Public School is a state-recognized, Hindi-medium institution established to address the region's educational needs. With limited schooling options and inadequate infrastructure in existing government schools, Chirag Public School aims to bridge this gap and tackle the educational challenges faced by the local community.",
                          image: HwfContent.siddiqueHassanCampus3,
                        ),
                      ),
                      _buildProjectCard(
                        title: 'Hostels for Boys',
                        icon: LucideIcons.bed,
                        context: context,
                        child: const SchoolProfileScreen(
                          schoolName: 'Hostels for Boys & girls',
                          description:
                              "Separate hostels have been arranged for boys and girls of Al Jamia Off-Campus and UG & PG Colleges. Special accommodations are reserved for orphaned students in these hostels.",
                          image: HwfContent.siddiqueHassanCampus2,
                          imageList: [
                            HwfContent.siddiqueHassanCampus2,
                            HwfContent.siddiqueHassanCampus4,
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Future Projects Section
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Future Projects',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1.3,
                    children: [
                      _buildProjectCard(
                        title: 'Industrial Training Centre',
                        icon: LucideIcons.wrench,
                        isFuture: true,
                        context: context,
                        child: const SchoolProfileScreen(),
                      ),
                      _buildProjectCard(
                        title: 'The Scholar School',
                        icon: LucideIcons.school2,
                        isFuture: true,
                        context: context,
                        child: const SchoolProfileScreen(),
                      ),
                      _buildProjectCard(
                        title: 'Medical Centre',
                        icon: LucideIcons.stethoscope,
                        isFuture: true,
                        context: context,
                        child: const SchoolProfileScreen(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Open campus map
        },
        backgroundColor: const Color(0xFFB71C1C),
        label: const Text(
          'View Campus Map',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: const Icon(
          LucideIcons.map,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required IconData icon,
    bool isFuture = false,
    Widget child = const SizedBox(),
    required BuildContext context,
  }) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isFuture
              ? null
              : () {
                  navigateTo(context: context, route: child);
                },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 32,
                  color:
                      isFuture ? Colors.orange[800] : const Color(0xFFB71C1C),
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
