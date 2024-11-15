// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:vision_2026/constants/image_class.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/IRT/irt_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MSS/mss_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MVT/mvt_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/hwt_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/masawat/masawat_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/tweet/tweet_detail_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar
            // SliverAppBar(
            //   floating: true,
            //   backgroundColor: const Color(0xFFB71C1C),
            //   expandedHeight: 200,
            //   flexibleSpace: FlexibleSpaceBar(
            //     background: Container(
            //       color: const Color(0xFFB71C1C),
            //       padding: const EdgeInsets.all(20),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Image.asset(
            //                 ImageClass.appIcon,
            //                 height: 60,
            //                 color: ColorClass.white,
            //               ),
            //               Container(
            //                 padding: const EdgeInsets.symmetric(
            //                   horizontal: 16,
            //                   vertical: 8,
            //                 ),
            //                 decoration: BoxDecoration(
            //                   color: Colors.white24,
            //                   borderRadius: BorderRadius.circular(20),
            //                 ),
            //                 child: const Text(
            //                   'English',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                     fontWeight: FontWeight.w500,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //           const SizedBox(height: 10),
            //           const Text(
            //             'Welcome to Vison26',
            //             style: TextStyle(
            //               fontSize: 28,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white,
            //             ),
            //           ),
            //           const Text(
            //             'Transforming lives through humanitarian and development programs',
            //             style: TextStyle(
            //               fontSize: 16,
            //               color: Colors.white70,
            //             ),
            //             maxLines: 2,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            // Vision 2026 Section
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImageClass.appIcon,
                          height: 60,
                        ),
                        const SizedBox(width: 12),
                        // const Text(
                        //   'Vision 2026',
                        //   style: TextStyle(
                        //     fontSize: 24,
                        //     fontWeight: FontWeight.bold,
                        //     color: Color(0xFFB71C1C),
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Vision 2026 is a collective goal shared by NGOs dedicated to transforming lives of the underprivileged and empowering them to become heroes in the nation's journey of progress.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Core Intervention Areas
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text(
            //           'Core Intervention Areas',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.black87,
            //           ),
            //         ),
            //         const SizedBox(height: 16),
            //         _buildInterventionArea(
            //           icon: LucideIcons.users,
            //           title: 'Community Development',
            //         ),
            //         _buildInterventionArea(
            //           icon: LucideIcons.heart,
            //           title: 'Social Welfare',
            //         ),
            //         _buildInterventionArea(
            //           icon: LucideIcons.bookOpen,
            //           title: 'Education & Training',
            //         ),
            //         _buildInterventionArea(
            //           icon: LucideIcons.stethoscope,
            //           title: 'Health',
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // Partner NGOs
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text(
                    //   "Our NGO'S",
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black87,
                    //   ),
                    // ),
                    const SizedBox(height: 16),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.5,
                      children: const [
                        PartnerCard(name: 'HWF'),
                        PartnerCard(name: 'HWT'),
                        PartnerCard(name: 'SBF'),
                        PartnerCard(name: 'SAHULAT'),
                        PartnerCard(name: 'MVT'),
                        PartnerCard(name: 'TWEET'),
                        PartnerCard(name: 'IRT'),
                        PartnerCard(name: 'MASAWAT'),
                        PartnerCard(name: 'MSS'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterventionArea({
    required IconData icon,
    required String title,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFFB71C1C),
          size: 24,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: () {
          // Handle intervention area tap
        },
      ),
    );
  }
}

class PartnerCard extends StatelessWidget {
  final String name;

  const PartnerCard({
    super.key,
    required this.name,
  });

  void _navigateToNGOScreen(BuildContext context) {
    Widget destinationScreen;

    switch (name.toUpperCase()) {
      case 'SBF':
        destinationScreen = const NGOProfileScreen();
        break;
      case 'HWT':
        destinationScreen = const HWTProfileScreen();
        break;
      case 'HWF':
        destinationScreen = const NGOProfileScreen();
        break;
      case 'IRT':
        destinationScreen = const IRTProfileScreen();
        break;
      case 'MVT':
        destinationScreen = const MVTProfileScreen();
        break;
      case 'MSS':
        destinationScreen = const MSSProfileScreen();
        break;
      case 'TWEET':
        destinationScreen = const TweetDetailPage();
        break;
      case 'MASAWAT':
        destinationScreen = const MasawatProfileScreen();
        break;
      case 'SAHULAT':
        destinationScreen = const SahulatDetailPage();
        break;
      default:
        destinationScreen = const NGOProfileScreen();
    }

    navigateTo(
      context: context,
      route: destinationScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
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
      child: InkWell(
        onTap: () {
          _navigateToNGOScreen(context);
        },
        borderRadius: BorderRadius.circular(12),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB71C1C),
            ),
          ),
        ),
      ),
    );
  }
}
