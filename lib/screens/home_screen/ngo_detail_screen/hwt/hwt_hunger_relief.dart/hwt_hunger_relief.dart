import 'package:flutter/material.dart';
import 'package:vision_2026/constants/color_class.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/hwt_hunger_relief.dart/hwt_hunger_relief_detailed_page.dart';

class HWTHungerReliefPage extends StatelessWidget {
  const HWTHungerReliefPage({super.key});

  @override
  Widget build(BuildContext context) {
    final projectEhsasDetails = ProjectDetails(
      title: 'Project Ehsas',
      description: '''
Launched in 2021 under the Vision 2026 flagship project in Delhi, Kolkata, Maharashtra and Lucknow to address the severe hunger crisis worsened by the Covid-19 lockdowns and subsequent job losses, HWT, through its Community Kitchens, has served over 3,50,000 freshly-cooked meals to slum dwellers, providing vital nourishment to the most vulnerable. The project continues to make a difference by providing over 500 fresh and hot meals daily to those in need in Delhi.
      ''',
      coverImage: 'assets/images/hwt/Page-3 B(1)_sub image 1.jpg',
      galleryImages: [
        'assets/images/hwt/Page-3 B(1)_sub image 1.jpg',
        'assets/images/hwt/Page-3 B(1)_sub image 2.jpg',
        'assets/images/hwt/Page-3 B(1)_sub image 3.jpg',
      ],
      impactStats: {
        'Meals Served': '3,50,000+',
        'Daily Meals': '500+',
        'Cities Covered': '4',
      },
    );

    final foodKitsDetails = ProjectDetails(
      title: 'Food Kits',
      description: '''
HWT is committed to fighting hunger by distributing essential Food Kits to those in need across the country, twice a year. With compassion at the heart of its mission, HWT has already delivered approximately 4,00,000 Food Kits (including Ration Kits during Ramazan and Meat Kits during Azahi), providing vital nourishment to countless families and individuals in need.
      ''',
      coverImage: 'assets/images/hwt/Page-3 B(2)_sub image 1.jpg',
      galleryImages: [
        'assets/images/hwt/Page-3 B(2)_sub image 1.jpg',
        'assets/images/hwt/Page-3 B(2)_sub image 2.jpg',
        'assets/images/hwt/Page-3 B(2)_sub image 3.jpeg',
      ],
      impactStats: {
        'Food Kits Distributed': '4,00,000+',
        'Ration Kits': '2,00,000+',
        'Meat Kits': '2,00,000+',
      },
    );

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Banner Image with Overlay Text and Back Button
                Stack(
                  children: [
                    Container(
                      height: isMobile ? 200 : 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/hwt/Page-3 B(1)_sub image 1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: isMobile ? 200 : 300,
                      color: ColorClass.primaryColor.withOpacity(0.7),
                      child: Center(
                        child: Text(
                          'HUNGER RELIEF',
                          style: TextStyle(
                            fontSize: isMobile ? 28 : 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    // Back Button
                    Positioned(
                      top: MediaQuery.of(context).padding.top + 10,
                      left: 16,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),

                // Content Section
                Padding(
                  padding: EdgeInsets.all(isMobile ? 16.0 : 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: isMobile ? 1 : 2,
                        childAspectRatio: 1.5,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: [
                          _buildProgramCard(
                            context,
                            'Project Ehsas',
                            'Launched in 2021, serving over 3,50,000 freshly-cooked meals',
                            Icons.restaurant,
                            isMobile,
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectDetailPage(
                                  projectDetails: projectEhsasDetails,
                                ),
                              ),
                            ),
                          ),
                          _buildProgramCard(
                            context,
                            'Food Kits',
                            'Distributed 4,00,000 Food Kits including Ration Kits and Meat Kits',
                            Icons.inventory,
                            isMobile,
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectDetailPage(
                                  projectDetails: foodKitsDetails,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProgramCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    bool isMobile,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,
                  size: isMobile ? 40 : 48, color: ColorClass.primaryColor),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: isMobile ? 20 : 24,
                  fontWeight: FontWeight.bold,
                  color: ColorClass.primaryColor,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? 14 : 16,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
