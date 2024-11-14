// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/career_guidence_screen/career_guidence_detail_screen/career_guidence_detail_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class CareerGuidanceScreen extends StatelessWidget {
  final String image;
  const CareerGuidanceScreen({super.key, required this.image});

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
                  Image.asset(
                    image,
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
                  Image.asset(
                    HwfContent.ctag,
                  ),
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
                  title: 'WEST BENGAL CIVIL SERVICE COACHING CENTRE',
                  subtitle: 'Kolkata',
                  icon: LucideIcons.school2,
                  child: const TrainingCenterDetailScreen(
                    title: 'WEST BENGAL CIVIL SERVICE COACHING CENTRE',
                    image: HwfContent.coaching,
                    description:
                        "The WBCS Coaching Program is a highly promising initiative providing free, residential coaching for aspirants of the West Bengal Civil Service (WBCS) exam. Of the 58 students enrolled so far, several achieved significant successes including WBCS, state and central government services.",
                  ),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'CAREER GUIDANCE & COUNSELLING',
                  subtitle: 'WBCS',
                  icon: LucideIcons.compass,
                  child: const TrainingCenterDetailScreen(
                    title: 'CAREER GUIDANCE & COUNSELLING',
                    image: HwfContent.coaching2,
                    description:
                        "CTAG’s mission is to empower individuals and communities by providing access to quality education and career opportunities. Through innovative learning programs, skill-building initiatives, and strategic partnerships, CTAG strives to create pathways to personal and professional growth, enabling people to achieve their potential and contribute meaningfully to society. Our commitment is to foster an inclusive environment where everyone has the resources, guidance, and support to build fulfilling careers and improve their quality of life.",
                  ),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Training Programs',
                  subtitle: 'Skill Development',
                  icon: LucideIcons.briefcase,
                  child: const TrainingCenterDetailScreen(
                    title: 'Training Programs',
                    image: HwfContent.coaching,
                    description:
                        "CTAG conducts specialized training sessions for Career Counsellors, Teachers, and Trainers to equip them with advanced skills in delivering impactful training and motivational sessions. These programs focus on enhancing their abilities to inspire, guide, and empower young minds, ensuring they become influential mentors and role models. Through practical workshops and strategic learning modules, CTAG enables these professionals to foster personal growth, instill confidence, and ignite the potential in students, shaping a more motivated and capable future generation.",
                  ),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Career Web Portal',
                  subtitle: 'Online Resources',
                  icon: LucideIcons.globe2,
                  child: const TrainingCenterDetailScreen(
                    title: 'Career Web Portal',
                    image: HwfContent.coaching3,
                    description:
                        "CTAG hosts a comprehensive and well-maintained career web portal, designed to provide timely and relevant information for a wide range of users, including career aspirants, job seekers, career guidance professionals, educators, and more. The portal is a valuable resource, offering insights on career paths, industry trends, job opportunities, and practical guidance to support career development at all stages. By presenting up-to-date content and interactive tools, the platform enables users to make informed decisions, build strong professional networks, and access expert guidance tailored to their career goals and aspirations.",
                  ),
                  context: context,
                ),
                _buildProgramCard(
                  title: 'Career Newsletter',
                  subtitle: 'Monthly Updates',
                  icon: LucideIcons.mailCheck,
                  child: const TrainingCenterDetailScreen(
                    title: 'Career Newsletter',
                    image: HwfContent.coaching4,
                    description:
                        "Each month, CTAG publishes a meticulously curated newsletter designed to keep subscribers informed about the latest scholarships, job openings in government sectors and Public Sector Undertakings (PSUs), and resources for personal and professional growth. This newsletter serves as a comprehensive guide for students, job seekers, and professionals looking to advance their careers and develop essential life skills. ",
                  ),
                  context: context,
                ),
              ]),
            ),
          ),
        ],
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
