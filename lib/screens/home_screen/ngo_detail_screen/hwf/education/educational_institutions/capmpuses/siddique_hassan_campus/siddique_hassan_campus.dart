import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
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
                    'Vision Academic City',
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
                    childAspectRatio: 1.0,
                    children: [
                      InterventionAreaCard(
                        title: 'Senior Secondary School',
                        icon: LucideIcons.graduationCap,
                        accentColor: const Color(0xFFB71C1C),
                        showIcon: false,
                        topImage:
                            'assets/images/hwf/senior secondary school.png',
                        child: const SchoolProfileScreen(
                          schoolName: 'Senior Secondary School',
                          imageList: [
                            'assets/images/hwf/senior secondary school malda.png',
                            'assets/images/hwf/senior secondary school.png',
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
                      InterventionAreaCard(
                        title: 'UG College',
                        icon: LucideIcons.building2,
                        accentColor: const Color(0xFFB71C1C),
                        showIcon: false,
                        topImage:
                            'assets/images/hwf/siddikhasan/ug_college.png',
                        child: const SchoolProfileScreen(
                            schoolName: 'UG College',
                            description:
                                "The UG College offers a variety of undergraduate and postgraduate courses, affiliated with recognized universities. Comprehensive facilities, including hostels, are already in place to support student needs.",
                            image: HwfContent.ugCollege),
                      ),
                      InterventionAreaCard(
                        title: 'Chirag Middle School',
                        icon: LucideIcons.school,
                        accentColor: const Color(0xFFB71C1C),
                        showIcon: false,
                        topImage:
                            'assets/images/hwf/chirag middle school mevat.png',
                        child: const SchoolProfileScreen(
                          schoolName: 'Chirag Middle School ',
                          description:
                              "Chirag Middle School is a state-recognized, Hindi-medium institution established to address the region's educational needs. With limited schooling options and inadequate infrastructure in existing government schools, Chirag Public School aims to bridge this gap and tackle the educational challenges faced by the local community.",
                          image: HwfContent.siddiqueHassanCampus3,
                        ),
                      ),
                      InterventionAreaCard(
                        title: 'Hostels for Boys ',
                        icon: LucideIcons.bed,
                        accentColor: const Color(0xFFB71C1C),
                        showIcon: false,
                        topImage: 'assets/images/hwf/boys hostel.png',
                        child: const SchoolProfileScreen(
                          schoolName: 'Hostels for Boys ',
                          description:
                              "Separate hostels have been arranged for boys of Al Jamia Off-Campus and UG & PG Colleges. Special accommodations are reserved for orphaned students in these hostels.",
                          image: HwfContent.siddiqueHassanCampus2,
                          imageList: [
                            HwfContent.siddiqueHassanCampus2,
                            HwfContent.siddiqueHassanCampus4,
                          ],
                        ),
                      ),

                       InterventionAreaCard(
                        title: 'Hostels for Girls',
                        icon: LucideIcons.bed,
                        accentColor: const Color(0xFFB71C1C),
                        showIcon: false,
                        topImage: 'assets/images/hwf/girls hostal.png',
                        child: const SchoolProfileScreen(
                          schoolName: 'Hostels for girls',
                          description:
                              "Separate hostels have been arranged for girls of Al Jamia Off-Campus and UG & PG Colleges. Special accommodations are reserved for orphaned students in these hostels.",
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
                    childAspectRatio: 1.0,
                    children: [
                      InterventionAreaCard(
                        title: 'Skill development Centre',
                        icon: LucideIcons.wrench,
                        showIcon: false,
                        topImage: 'assets/images/hwf/skill development.png',
                        accentColor: Colors.orange[800]!,
                        child: const SchoolProfileScreen(
                          schoolName: 'Skill development Centre',
                          image: 'assets/images/hwf/skill development.png',
                        ),
                      ),
                      InterventionAreaCard(
                        title: 'The Scholar School',
                        icon: LucideIcons.school2,
                        showIcon: false,
                        topImage: 'assets/images/hwf/scholar school malda.png',
                        accentColor: Colors.orange[800]!,
                        child: const SchoolProfileScreen(
                          schoolName: 'The Scholar School',
                          imageList: [
                            'assets/images/hwf/scholar school malda.png',
                            'assets/images/hwf/scholar school malda2.png',
                            'assets/images/hwf/scholar school mevat.png',
                          ],
                        ),
                      ),
                       InterventionAreaCard(
                        title: 'TSS Hostel For Boys',
                        icon: LucideIcons.school2,
                        showIcon: false,
                        topImage: 'assets/images/hwf/tss hostel.png',
                        accentColor: Colors.orange[800]!,
                        child: const SchoolProfileScreen(
                          schoolName: 'TSS Hostel For Boys',
                          image: 'assets/images/hwf/tss hostel.png',
                        ),
                      ), InterventionAreaCard(
                        title: 'TSS Hostel For Girls',
                        icon: LucideIcons.school2,
                        showIcon: false,
                        topImage: 'assets/images/hwf/tss hostel.png',
                        accentColor: Colors.orange[800]!,
                        child: const SchoolProfileScreen(
                          schoolName: 'TSS Hostel For Girls',
                          image: 'assets/images/hwf/tss hostel.png',
                        ),
                      ),
                    
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Open campus map
      //   },
      //   backgroundColor: const Color(0xFFB71C1C),
      //   label: const Text(
      //     'View Campus Map',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   icon: const Icon(
      //     LucideIcons.map,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
