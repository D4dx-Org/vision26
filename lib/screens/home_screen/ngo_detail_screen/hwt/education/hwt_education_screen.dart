import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/education/components/hwt_education_service_detail_screen.dart';

class HWTEducationServicesScreen extends StatelessWidget {
  const HWTEducationServicesScreen({super.key});

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
                            '#Education',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Education',
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
                  'HWT is dedicated to transforming lives through education, focusing on providing access to learning for children from impoverished and economically-backward communities. Through various educational projects, HWT works to ensure that children who are deprived of basic education get the opportunity to learn and grow.',
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
                crossAxisCount: 3,
                childAspectRatio: 0.85,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceCard(
                  context: context,
                  title: 'Community Learning Centre',
                  code: 'Education',
                  child: const HwtEducationServiceDetailScreen(
                    title: 'Community Learning Centre',
                    description:
                        'In 2022, HWT has established a Community Learning Centre (CLC) in Shiv Vihar, North East Delhi, where school dropout rates are high. This Centre offers basic education to out-of-school children, preparing them for formal schooling. The Centre accommodates 50 children, who attend in two shifts over a six-day week.',
                    images: [
                      'assets/images/hwt/Page-3 C(1)_sub image 1.jpg',
                      'assets/images/hwt/Page-3 C(1)_sub image 2.jpg',
                      'assets/images/hwt/Page-3 C(1)_sub image 3.jpg',
                    ],
                  ),
                  image: "assets/images/hwt/Page-3 C(1)_sub image 1.jpg",
                  description:
                      'Interactive learning spaces designed for collaborative education and community engagement.',
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Construction of School',
                  code: 'Education',
                  child: const HwtEducationServiceDetailScreen(
                    title: 'Construction of Schools',
                    description:
                        'Constructed in July 2020 by Human Welfare Trust in Natial, Murshidabad, West Bengal, Gulbaag Academy is one of the key schools of this area, where over 200 children study currently from class LKG to Class 4th. The school building also houses a community centre.In 2019, Human Welfare Trust had constructed the building of Modern Islamic School in Cooch Bihar, West Bengal. This building also houses a student hostel, a community centre, a clinic and a shop. There is currently over 100 students in this school studying from class 4th to class 10th. ',
                    images: [
                      'assets/images/hwt/Page-3 C(2)_sub image 1.jpg',
                      'assets/images/hwt/Page-3 C(2)_sub image 2.png',
                    ],
                  ),
                  image: "assets/images/hwt/Page-3 C(2)_sub image 1.jpg",
                  description:
                      'Modern infrastructure development with sustainable design principles for quality education.',
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Construction of Hostel',
                  code: 'Education',
                  child: const HwtEducationServiceDetailScreen(
                    title: 'Construction of Hostel',
                    description:
                        'The construction of the Student Hostel in the Jamia Islamia Shantapuram campus located in Mattadi, Kerala was completed by Human Welfare Trust in 2021. Around 50 students currently stay in this hostel.',
                    images: [
                      "assets/images/hwt/Page-3 C(3)_sub image 1.png",
                    ],
                  ),
                  image: "assets/images/hwt/Page-3 C(3)_sub image 1.png",
                  description:
                      'Residential facilities designed to provide safe and nurturing learning environments.',
                ),
                _buildServiceCard(
                  context: context,
                  title: 'School Capacity Building',
                  code: 'Education',
                  child: const HwtEducationServiceDetailScreen(
                    title: 'School Capacity Building',
                    description:
                        'HWT has contributed to the development of numerous schools by supporting infrastructure projects, including constructing classrooms, furnishing learning spaces, and building libraries, among other essential facilities.',
                    images: [
                      "assets/images/hwt/Page-3 C(4)_sub image 1.jpg",
                      'assets/images/hwt/Page-3 C(4)_sub image 2.jpg',
                      'assets/images/hwt/Page-3 C(4)_sub image 3.jpg',
                    ],
                  ),
                  image: "assets/images/hwt/Page-3 C(4)_sub image 1.jpg",
                  description:
                      'Expanding educational infrastructure with modern classroom facilities and resources.',
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required String code,
    required String image,
    required String description,
    required BuildContext context,
    Widget child = const SizedBox(),
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              navigateTo(context: context, route: child);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image Section
                Expanded(
                  flex: 2,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            code,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Text Section
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFB71C1C),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // const SizedBox(height: 4),
                        // Text(
                        //   description,
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //     color: Colors.grey[600],
                        //   ),
                        //   maxLines: 2,
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                      ],
                    ),
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
