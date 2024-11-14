import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/scholorship_screen/scholorship_detail_scren/scholorship_detail_scren.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class ScholarshipScreen extends StatelessWidget {
  const ScholarshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header
          SliverAppBar(
            expandedHeight: 300,
            toolbarHeight: 60,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    HwfContent.scholarshipImage,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 40,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFB71C1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        '8650+ Scholarships Provided',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
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
                    'Scholarships',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFFB71C1C),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Mission Statement
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
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
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB71C1C).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      LucideIcons.graduationCap,
                      color: Color(0xFFB71C1C),
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'HWF provides UG, PG, and Prof. Siddique Hassan Scholarships to needy students across the country based on their academic performance, economic background, and social commitment.',
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
          ),

          // Scholarship Programs
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Scholarship Programs',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildScholarshipCard(
                    child: const ScholarshipDetailScreen(
                      type: ScholarshipType.undergraduate,
                    ),
                    context: context,
                    title: 'UG Scholarship',
                    icon: LucideIcons.book,
                    description:
                        'Supporting undergraduate students in their academic journey',
                    gradientColors: [
                      const Color(0xFF1565C0),
                      const Color(0xFF1976D2),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildScholarshipCard(
                    title: 'PG Scholarship',
                    child: const ScholarshipDetailScreen(
                      type: ScholarshipType.postgraduate,
                    ),
                    context: context,
                    icon: LucideIcons.bookOpen,
                    description:
                        'Empowering postgraduate students to achieve excellence',
                    gradientColors: [
                      const Color(0xFF00796B),
                      const Color(0xFF009688),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildScholarshipCard(
                    title: 'Prof. KA Siddique Hassan Scholarship',
                    icon: LucideIcons.award,
                    child: const ScholarshipDetailScreen(
                      type: ScholarshipType.memorial,
                    ),
                    context: context,
                    description:
                        'Prestigious scholarship for outstanding academic achievers',
                    gradientColors: [
                      const Color(0xFFC62828),
                      const Color(0xFFD32F2F),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Success Stories
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Text(
          //           'Success Stories',
          //           style: TextStyle(
          //             fontSize: 22,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black87,
          //           ),
          //         ),
          //         const SizedBox(height: 16),
          //         SizedBox(
          //           height: 200,
          //           child: ListView.builder(
          //             scrollDirection: Axis.horizontal,
          //             itemCount: 5,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 width: 300,
          //                 margin: const EdgeInsets.only(right: 16),
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.circular(16),
          //                   boxShadow: [
          //                     BoxShadow(
          //                       color: Colors.black.withOpacity(0.05),
          //                       blurRadius: 10,
          //                       offset: const Offset(0, 2),
          //                     ),
          //                   ],
          //                 ),
          //                 child: Stack(
          //                   children: [
          //                     ClipRRect(
          //                       borderRadius: BorderRadius.circular(16),
          //                       child: Image.network(
          //                         "https://i.ytimg.com/vi/JBZ22ecVTts/mqdefault.jpg",
          //                         fit: BoxFit.cover,
          //                         width: 300,
          //                         height: 200,
          //                       ),
          //                     ),
          //                     Container(
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(16),
          //                         gradient: LinearGradient(
          //                           begin: Alignment.topCenter,
          //                           end: Alignment.bottomCenter,
          //                           colors: [
          //                             Colors.transparent,
          //                             Colors.black.withOpacity(0.8),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                     const Positioned(
          //                       bottom: 16,
          //                       left: 16,
          //                       right: 16,
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           Text(
          //                             'Student Success Story',
          //                             style: TextStyle(
          //                               color: Colors.white,
          //                               fontSize: 18,
          //                               fontWeight: FontWeight.bold,
          //                             ),
          //                           ),
          //                           SizedBox(height: 4),
          //                           Text(
          //                             'From scholarship recipient to successful professional',
          //                             style: TextStyle(
          //                               color: Colors.white70,
          //                               fontSize: 14,
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               );
          //             },
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Handle scholarship application
      //   },
      //   backgroundColor: const Color(0xFFB71C1C),
      //   icon: const Icon(
      //     LucideIcons.pencil,
      //     color: Colors.white,
      //   ),
      //   label: const Text(
      //     'Apply Now',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildScholarshipCard({
    required String title,
    required IconData icon,
    required String description,
    required List<Color> gradientColors,
    required Widget child,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: gradientColors[0].withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
