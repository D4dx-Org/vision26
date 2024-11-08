import 'package:flutter/material.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/educational_institutions_screen.dart';

class EducationServicesScreen extends StatelessWidget {
  const EducationServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Custom App Bar with Image
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    "https://vision.gcdn.co//media/1044/education_img-3.jpg",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                'Education',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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

          // Services Grid
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceCard(
                  child: const EducationalInstitutionsScreen(),
                  context: context,
                  title: 'Educational Institutions',
                  code: 'A1(a)',
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Holy_cross_institute_of_management_and_technology.jpg/1100px-Holy_cross_institute_of_management_and_technology.jpg",
                  description:
                      'Schools and educational facilities providing quality education.',
                ),
                _buildServiceCard(
                  title: 'Capacity Building of Schools',
                  code: 'A1(b)',
                  context: context,
                  image:
                      "https://vision.gcdn.co//media/1045/education_img-4.jpg",
                  description:
                      'Enhancing infrastructure and teaching capabilities.',
                ),
                _buildServiceCard(
                  title: 'Scholarship',
                  context: context,
                  code: 'A1(c)',
                  image:
                      "https://www.sevamandir.org/images/What%20we%20do/WindowImg/171_4_E_3_sub-page_ed.jpg",
                  description: 'Financial support for deserving students.',
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Career Guidance & Coaching',
                  code: 'A1(d)',
                  image:
                      "https://content.jdmagicbox.com/comp/kozhikode/dc/0495px495.x495.110808155236.n8s7dc/catalogue/career-guidance-academy-ymca-road-kozhikode-tutorials-4nrn6k8e23.jpg",
                  description: 'Professional guidance for future success.',
                ),
                _buildServiceCard(
                  title: 'School Enrollment Program',
                  code: 'A1(e)',
                  context: context,
                  image:
                      "https://media.assettype.com/freepressjournal/2021-11/c3c7571d-c72f-44de-8c70-570eb11ef220/photo_1574097656146_0b43b7660cb6.jpg",
                  description: 'Initiatives to increase school enrollment.',
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Community Learning Centres',
                  code: 'A1(f)',
                  image:
                      "https://saiangel.org/wp-content/uploads/2024/09/WhatsApp-Image-2024-09-03-at-2.35.17-PM.jpeg",
                  description: 'Local centers for community education.',
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
                  flex: 3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
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
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFB71C1C),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
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
