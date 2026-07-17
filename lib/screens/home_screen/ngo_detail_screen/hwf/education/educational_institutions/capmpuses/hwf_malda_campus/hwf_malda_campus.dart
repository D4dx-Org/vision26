import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/siddique_hassan_campus/existing_projects/school_profile_scren.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class HwfMaldaCampus extends StatelessWidget {
  const HwfMaldaCampus({super.key});

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
                    HwfContent.hwfMaldaCampus,
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
                    "HWF MALDA CAMPUS, WEST BENGAL",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Narayanpur, Malda, West Bengal',
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
                    'A Developing Education Hub in Malda',
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
                      "The HWF Malda Campus is an emerging educational hub in Narayanpur, Malda district, West Bengal, covering 12 acres. This campus is part of the Human Welfare Foundation's ongoing development efforts to create multi-institution centers for learning and empowerment in underserved regions.",
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
                    childAspectRatio: 0.9,
                    children: [
                      InterventionAreaCard(
                        title: 'Senior Secondary School',
                        icon: LucideIcons.school,
                        accentColor: const Color(0xFFB71C1C),
                        child: const SchoolProfileScreen(
                          schoolName: 'Senior Secondary School',
                          image: HwfContent.maldaJamiaCampus1,
                          imageList: [
                            HwfContent.maldaJamiaCampus2,
                            HwfContent.maldaJamiaCampus3,
                            HwfContent.maldaJamiaCampus4,
                          ],
                          description:
                              "This institution serves as an off-campus center of Al Jamia Al Islamia, a prestigious Islamic institution based in Santhapuram, Kerala.  Students are admitted into the residential program after completing the 10th grade and continue their education here through to a bachelor’s degree, with a curriculum that includes comprehensive knowledge in Islamic studies.",
                        ),
                      ),
                      InterventionAreaCard(
                        title: 'The Scholar School',
                        icon: LucideIcons.graduationCap,
                        accentColor: const Color(0xFFB71C1C),
                        child: const SchoolProfileScreen(
                          schoolName: 'The Scholar School',
                          description:
                              "This year, The Scholar School at the Malda campus has launched with KG and 1st grade. In the coming years, it is set to develop into a CBSE-affiliated English medium school.",
                          image:
                             HwfContent.maldaScholorSchool1,
                          imageList: [
                             HwfContent.maldaScholorSchool1,
                            HwfContent.maldaScholorSchool2,
                            HwfContent.maldaScholorSchool3,
                          ],
                        ),
                      ),
                      InterventionAreaCard(
                        title: 'Hostel for Boys',
                        icon: LucideIcons.building2,
                        accentColor: const Color(0xFFB71C1C),
                        child: const SchoolProfileScreen(
                          schoolName: 'Hostels for Boys',
                          description:
                              "Separate hostels have been arranged for boys and girls of Al Jamia Off-Campus and Scholar School, Special accommodations are reserved for orphaned students in these hostels.",
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
                      InterventionAreaCard(
                        title: 'TSS Hostel For Boys',
                        icon: LucideIcons.wrench,
                        enabled: false,
                        accentColor: Colors.orange[800]!,
                        child: const SchoolProfileScreen(),
                      ),
                      InterventionAreaCard(
                        title: 'Skill Development Center',
                        icon: LucideIcons.stethoscope,
                        enabled: false,
                        accentColor: Colors.orange[800]!,
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
