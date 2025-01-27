// image_gallery_grid.dart
import 'package:flutter/material.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/hwf_malda_campus/hwf_malda_campus.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/educational_institutions/capmpuses/siddique_hassan_campus/siddique_hassan_campus.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';

class ImageGalleryGrid extends StatelessWidget {
  final List<String> imageList;
  final double spacing;
  final int crossAxisCount;
  final double childAspectRatio;

  const ImageGalleryGrid({
    Key? key,
    required this.imageList,
    this.spacing = 8.0,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImageViewerScreen(
                  imagePath: imageList[index],
                ),
              ),
            );
          },
          child: Hero(
            tag: imageList[index],
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: imageList[index].startsWith('http')
                    ? Image.network(
                        imageList[index],
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// image_viewer_screen.dart
class ImageViewerScreen extends StatelessWidget {
  final String imagePath;

  const ImageViewerScreen({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: imagePath,
              child: InteractiveViewer(
                minScale: 0.5,
                maxScale: 4.0,
                child: imagePath.startsWith('http')
                    ? Image.network(
                        imagePath,
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      )
                    : Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// other_campuses_screen.dart
class OtherCampusesScreen extends StatelessWidget {
  final String title;
  final List<String> imageList;
  final String location;
  final String description;

  const OtherCampusesScreen({
    super.key,
    required this.title,
    required this.imageList,
    required this.location,
    required this.description,
  });

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
                  imageList.isNotEmpty
                      ? Image.asset(
                          imageList[0],
                          fit: BoxFit.cover,
                        )
                      : Container(color: Colors.grey),
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
              title: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: const TextStyle(
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

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Location
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFFB71C1C),
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Description
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Image Gallery Header
                  const Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB71C1C),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Image Gallery
                  ImageGalleryGrid(
                    imageList: imageList,
                    crossAxisCount: 2,
                    spacing: 16,
                    childAspectRatio: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// educational_institutions_screen.dart
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
                padding: EdgeInsets.only(left: 20),
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
                child: const Column(
                  children: [
                    Text(
                      '8 Developing Campuses',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFB71C1C),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '6 States',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
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
                  image: HwfContent.hwfMaldaCampus,
                ),
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
                  image: HwfContent.delphiScholarSchool,
                ),
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
                      HwfContent.guwahatiScholarSchool6,
                      HwfContent.guwahatiScholarSchool7,
                      HwfContent.guwahatiScholarSchool8,
                      HwfContent.guwahatiScholarSchool9,
                      HwfContent.guwahatiScholarSchool10,
                      HwfContent.guwahatiScholarSchool11,
                      HwfContent.guwahatiScholarSchool12,
                      HwfContent.guwahatiScholarSchool13,
                    ],
                    location: 'Assam',
                    description:
                        "The Scholar School in Guwahati, Assam, affiliated with CBSE, offers education up to grade 12. In the recent final examinations, it achieved the highest scores in the state. This residential school of separate hostels for boys and girls.",
                  ),
                  place: 'Assam',
                  image: HwfContent.guwahatiScholarSchool,
                ),
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
                    location: 'Howrah, West Bengal',
                    description:
                        "The Scholar School in Bhagnan, Howrah, West Bengal, offers education up to 10th standard. This residential school has good infrastructure including hostel for boys and good play area.",
                  ),
                  place: 'West Bengal',
                  image: HwfContent.howrahScholarSchool,
                ),
                _buildInstitutionCard(
                  context: context,
                  child: const OtherCampusesScreen(
                    title: 'The Scholar School',
                    imageList: [
                      HwfContent.rargaonsScholarSchool,
                      HwfContent.rargaonsScholarSchool1,
                      HwfContent.rargaonsScholarSchool2,
                      HwfContent.rargaonsScholarSchool3,
                      HwfContent.rargaonsScholarSchool4,
                    ],
                    location: 'Rargaon, Jharkhand',
                    description:
                        "The Scholar School in Rargaon, Jharkhand, offers education up to 4th grade. In the coming years, it is set to develop into a CBSE-affiliated English medium school.",
                  ),
                  name: 'The Scholar School',
                  location: 'Rargaon, Jharkhand',
                  place: 'Jharkhand',
                  image: HwfContent.howrahScholarSchool6,
                ),
                _buildInstitutionCard(
                  context: context,
                  child: const OtherCampusesScreen(
                    title: 'The Scholar School',
                    location: 'Darbhanga, Bihar',
                    imageList: [
                      HwfContent.biharscholarSchool,
                      HwfContent.biharscholarSchool1,
                      HwfContent.biharscholarSchool2,
                    ],
                    description:
                        "The Scholar School in Darbhanga, Bihar, provides education from nursery through 3rd standard. In the coming years, it is set to develop into a CBSE-affiliated English medium school.",
                  ),
                  name: 'The Scholar School',
                  location: 'Darbhanga, Bihar',
                  place: 'Bihar',
                  image: HwfContent.biharscholarSchool,
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
                        "The Millennium School in Hazaribagh, Jharkhand, currently offers education up to the 10th grade. With a well-developed infrastructure, future plans include establishing a residential coaching center for girls.",
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => child),
              );
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
                                  Icons.location_on,
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
