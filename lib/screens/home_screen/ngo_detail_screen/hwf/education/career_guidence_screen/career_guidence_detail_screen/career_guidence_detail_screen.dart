import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class TrainingCenterDetailScreen extends StatelessWidget {
  final String? title;
  final String? image;
  final String? description;
  const TrainingCenterDetailScreen(
      {super.key, this.title, this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header with Inauguration Image
          SliverAppBar(
            expandedHeight: 300,
            toolbarHeight: 80,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    image!,
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
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1565C0).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      LucideIcons.target,
                      color: Color(0xFF1565C0),
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    description!,
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

          // // Location Section
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     padding: const EdgeInsets.all(20),
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(16),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black.withOpacity(0.05),
          //           blurRadius: 10,
          //           offset: const Offset(0, 2),
          //         ),
          //       ],
          //     ),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Row(
          //           children: [
          //             Icon(
          //               LucideIcons.mapPin,
          //               color: Color(0xFF1565C0),
          //             ),
          //             SizedBox(width: 12),
          //             Text(
          //               'Location',
          //               style: TextStyle(
          //                 fontSize: 18,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.black87,
          //               ),
          //             ),
          //           ],
          //         ),
          //         const SizedBox(height: 16),
          //         Text(
          //           'D-307, First Floor, MF Publishers Building,\nAbul Fazl Enclave, New Delhi - 110025',
          //           style: TextStyle(
          //             fontSize: 16,
          //             height: 1.5,
          //             color: Colors.grey[800],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // Programs Offered
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 20),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Text(
          //           'Programs Offered',
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black87,
          //           ),
          //         ),
          //         const SizedBox(height: 16),
          //         _buildProgramCard(
          //           title: 'Career Counselling',
          //           description: 'One-on-one guidance sessions with experts',
          //           icon: LucideIcons.users,
          //         ),
          //         const SizedBox(height: 12),
          //         _buildProgramCard(
          //           title: 'Academic Support',
          //           description: 'Subject-specific coaching and mentoring',
          //           icon: LucideIcons.bookOpen,
          //         ),
          //         const SizedBox(height: 12),
          //         _buildProgramCard(
          //           title: 'Skill Development',
          //           description: 'Practical training for professional growth',
          //           icon: LucideIcons.rocket,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          // Gallery
          // SliverToBoxAdapter(
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const Text(
          //           'Training Center Gallery',
          //           style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black87,
          //           ),
          //         ),
          //         const SizedBox(height: 16),
          //         SizedBox(
          //           height: 180,
          //           child: ListView.builder(
          //             scrollDirection: Axis.horizontal,
          //             itemCount: 5,
          //             itemBuilder: (context, index) => Container(
          //               width: 250,
          //               margin: const EdgeInsets.only(right: 16),
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(16),
          //                 image: const DecorationImage(
          //                   image: NetworkImage(
          //                       "https://content.jdmagicbox.com/comp/kozhikode/dc/0495px495.x495.110808155236.n8s7dc/catalogue/career-guidance-academy-ymca-road-kozhikode-tutorials-4nrn6k8e23.jpg"),
          //                   fit: BoxFit.cover,
          //                 ),
          //                 boxShadow: [
          //                   BoxShadow(
          //                     color: Colors.black.withOpacity(0.1),
          //                     blurRadius: 10,
          //                     offset: const Offset(0, 2),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: const Color(0xFF1565C0),
      //   icon: const Icon(
      //     LucideIcons.userPlus,
      //     color: Colors.white,
      //   ),
      //   label: const Text(
      //     'Enroll Now',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 16,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildQuickInfoItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xFF1565C0),
          size: 24,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildProgramCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Container(
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
      child: Row(
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
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
