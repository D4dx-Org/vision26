import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/hwf_malda_campus/hwf_malda_campus.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/other_campuses/other_campuses_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/siddique_hassan_campus/siddique_hassan_campus.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class EducationalInstitutionsScreen extends StatelessWidget {
  const EducationalInstitutionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Custom App Bar with Image
          SliverAppBar(
            expandedHeight: 250,
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
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              title: const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Educational Institutions',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              titlePadding: const EdgeInsets.all(16),
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

          // Summary Section
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: const Color(0xFFB71C1C),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const Text(
                      '8 Developing Campuses',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB71C1C),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '7 Schools in 6 States',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Institutions List
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildInstitutionCard(
                  context: context,
                  child: const SiddiqueHassanCampus(),
                  name: 'Siddique Hassan Campus',
                  location: 'Mewat, Haryana',
                  place: 'Hayana',
                  image: HwfContent.siddiqueHassanCampus,
                ),
                _buildInstitutionCard(
                    context: context,
                    child: const HwfMaldaCampus(),
                    name: 'HWF Malda Campus',
                    location: 'West Bengal',
                    place: 'West Bengal',
                    image: HwfContent.hwfMaldaCampus),
                _buildInstitutionCard(
                    context: context,
                    child: const OtherCampusesScreen(
                      title: 'The Scholar School',
                      imageList: [
                        HwfContent.delphiScholarSchool,
                        HwfContent.delphiScholarSchool1,
                        HwfContent.delphiScholarSchool2,
                        HwfContent.delphiScholarSchool3,
                        HwfContent.delphiScholarSchool4,
                      ],
                      location: 'Jamia Nagar, New Delhi',
                      description:
                          "The Scholar School in Jamia Nagar, Delhi, provides education up to the 8th grade, following the CBSE curriculum. The school features quality infrastructure, including well-equipped classrooms and a newly inaugurated multipurpose hall.",
                    ),
                    name: 'The Scholar School',
                    location: 'Jamia Nagar, New Delhi',
                    place: 'New Delhi',
                    image: HwfContent.delphiScholarSchool),
                _buildInstitutionCard(
                    context: context,
                    name: 'The Scholar School',
                    location: 'Guwahati, Assam',
                    child: const OtherCampusesScreen(
                        title: 'The Scholar School',
                        imageList: [
                          HwfContent.guwahatiScholarSchool,
                          HwfContent.guwahatiScholarSchool2,
                          HwfContent.guwahatiScholarSchool3,
                          HwfContent.guwahatiScholarSchool4,
                          HwfContent.guwahatiScholarSchool5,
                        ],
                        location: 'Assam',
                        description:
                            "The Scholar School in Guwahati, Assam, affiliated with CBSE, offers education up to grade 12. In the recent final examinations, it achieved the highest scores in the state. This residential school of separate hostels for boys and girls."),
                    place: 'Assam',
                    image: HwfContent.guwahatiScholarSchool),
                _buildInstitutionCard(
                    context: context,
                    name: 'The Scholar School',
                    location: 'Howrah, West Bengal',
                    child: const OtherCampusesScreen(
                      title: 'The Scholar School',
                      imageList: [
                        HwfContent.howrahScholarSchool,
                        HwfContent.howrahScholarSchool1,
                        HwfContent.howrahScholarSchool2,
                        HwfContent.howrahScholarSchool3,
                        HwfContent.howrahScholarSchool4,
                        HwfContent.howrahScholarSchool5,
                      ],
                      location: 'West Bengal',
                      description:
                          "The Scholar School in Bhagnan, Howrah, West Bengal, offers education up to 10th standard. This residential school has good infrastructure including hostel for boys and good play area.",
                    ),
                    place: 'West Bengal',
                    image: HwfContent.howrahScholarSchool),
                _buildInstitutionCard(
                  context: context,
                  child: const OtherCampusesScreen(
                    title: 'The Scholar School',
                    imageList: [],
                    location: 'Bargaon, Jharkhand',
                    description:
                        "This institution serves as an off-campus center of Al Jamia Al Islamia, a prestigious Islamic institution based in Santhapuram, Kerala. Students are admitted into the residential program after completing the 10th grade and continue their education here through to a bachelor's degree, with a curriculum that includes comprehensive knowledge in Islamic studies.",
                  ),
                  name: 'The Scholar School',
                  location: 'Bargaon, Jharkhand',
                  place: 'Jharkhand',
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/c/cd/University-of-Alabama-EngineeringResearchCenter-01.jpg",
                ),
                _buildInstitutionCard(
                  context: context,
                  child: const OtherCampusesScreen(
                    title: 'The Scholar School',
                    location: 'Darbhanga, Bihar',
                    imageList: [],
                    description:
                        "This institution serves as an off-campus center of Al Jamia Al Islamia, a prestigious Islamic institution based in Santhapuram, Kerala. Students are admitted into the residential program after completing the 10th grade and continue their education here through to a bachelor's degree, with a curriculum that includes comprehensive knowledge in Islamic studies.",
                  ),
                  name: 'The Scholar School',
                  location: 'Darbhanga, Bihar',
                  place: 'Bihar',
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/c/cd/University-of-Alabama-EngineeringResearchCenter-01.jpg",
                ),
                _buildInstitutionCard(
                  context: context,
                  child: const OtherCampusesScreen(
                    title: 'Millennium Public School',
                    location: 'Hazaribagh, Jharkhand',
                    imageList: [
                      HwfContent.millenniumSchoolImage,
                      HwfContent.millenniumSchoolImage2,
                      HwfContent.millenniumSchoolImage3,
                      HwfContent.millenniumSchoolImage4,
                      HwfContent.millenniumSchoolImage5,
                    ],
                    description:
                        "This institution serves as an off-campus center of Al Jamia Al Islamia, a prestigious Islamic institution based in Santhapuram, Kerala. Students are admitted into the residential program after completing the 10th grade and continue their education here through to a bachelor's degree, with a curriculum that includes comprehensive knowledge in Islamic studies.",
                  ),
                  name: 'Millennium Public School',
                  location: 'Hazaribagh, Jharkhand',
                  place: 'Jharkhand',
                  image: HwfContent.millenniumSchoolImage,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstitutionCard({
    required String name,
    required String location,
    required String place,
    required String image,
    required Widget child,
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
                SizedBox(
                  height: 230,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      image.startsWith('http')
                          ? Image.network(
                              image,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              image,
                              fit: BoxFit.cover,
                            ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            place,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Details Section
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB71C1C),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  LucideIcons.mapPin,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  location,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ],
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
