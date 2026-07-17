import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/tweet/economic_empowerment/education_sub_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/tweet/education/education_detail_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/tweet/education/education_sub_page.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/tweet/tweet_content.dart';

class TweetDetailPage extends StatelessWidget {
  const TweetDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        title: const Text(
          "www.tweetrust.org",
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
                    height: 190,
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
                        TweetContent.logo,
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
                    HwfContent.tweetTrust,
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
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
                children: const [
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Education',
                    icon: LucideIcons
                        .graduationCap, // Already appropriate - education icon
                    child: EducationSubPage(),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Economic empowerment',
                    icon: LucideIcons
                        .wallet, // Changed to wallet icon to represent economic aspects
                    child: EconomicEmpowermentScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Widow support',
                    icon: LucideIcons
                        .shield, // Already appropriate - represents care and support
                    child: EducationDetailPage(
                      title: 'Widow support',
                      code: "#support",
                      description: TweetContent.tweetDescription10,
                      imagePath: TweetContent.tweetimage29,
                      icon: LucideIcons.shield,
                      imageList: [
                        TweetContent.tweetimage28,
                        TweetContent.tweetimage29,
                        TweetContent.tweetimage30,
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Leadership development',
                    icon: LucideIcons
                        .trophy, // Changed to users icon to represent leadership and team
                    child: EducationDetailPage(
                      title: 'Leadership development',
                      code: "#Leadership",
                      description: TweetContent.tweetDescription11,
                      imagePath: TweetContent.tweetimage31,
                      icon: LucideIcons.trophy,
                      imageList: [
                        TweetContent.tweetimage31,
                        TweetContent.tweetimage32,
                        TweetContent.tweetimage4,
                        TweetContent.tweetimage5,
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: "Women facilitation centre",
                    icon: LucideIcons
                        .userCircle2, // Changed to user-circle-2 to represent person-centered services
                    child: EducationDetailPage(
                      title: "Women facilitation centre",
                      code: "#Leadership",
                      description: TweetContent.tweetDescription12,
                      imagePath: TweetContent.tweetimage6,
                      icon: LucideIcons.userCircle2,
                      imageList: [
                        TweetContent.tweetimage6,
                        TweetContent.tweetimage7,
                        TweetContent.tweetimage8,
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: "Social empowerment",
                    icon: LucideIcons
                        .network, // Changed to network icon to represent social connections
                    child: EducationDetailPage(
                      title: "Social empowerment",
                      code: "#empowerment",
                      description: TweetContent.tweetDescription13,
                      imagePath: TweetContent.tweetimage9,
                      icon: LucideIcons.network,
                      imageList: [
                        TweetContent.tweetimage9,
                        TweetContent.tweetimage10,
                        TweetContent.tweetimage11,
                        TweetContent.tweetimage12,
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: "Mahila help desk",
                    icon: LucideIcons
                        .helpingHand, // Changed to helping-hand icon to represent assistance
                    child: EducationDetailPage(
                      title: "Mahila help desk",
                      code: "#help desk",
                      description: TweetContent.tweetDescription14,
                      imagePath: TweetContent.tweetimage13,
                      icon: LucideIcons.helpingHand,
                      imageList: [
                        TweetContent.tweetimage13,
                        TweetContent.tweetimage1,
                        TweetContent.tweetimage2,
                      ],
                    ),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: "Relief & rehabilitation",
                    icon: LucideIcons
                        .lifeBuoy, // Changed to life-buoy icon to represent emergency relief
                    child: EducationDetailPage(
                      title: "Relief & rehabilitation",
                      code: "#help desk",
                      description: TweetContent.tweetDescription15,
                      imagePath: TweetContent.tweetimage3,
                      icon: LucideIcons.lifeBuoy,
                      imageList: [
                        TweetContent.tweetimage3,
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

