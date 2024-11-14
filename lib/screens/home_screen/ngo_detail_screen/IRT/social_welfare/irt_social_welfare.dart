import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/healthcare/hwt_health_care_service_detail_screen.dart';

class IRTHealthcareServicesScreen extends StatelessWidget {
  const IRTHealthcareServicesScreen({super.key});

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
                            '#Socialwelfare',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Social Welfare',
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
                  'Ideal Relief Trust carries out humanitarian, Religious and development programs to fight poverty and people’s sufferings by working in partnership with vulnerable communities. The organization focuses on the most rural and backward regions in the country where people are deprived of basic needs and amenities.',
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
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              delegate: SliverChildListDelegate([
                _buildServiceCard(
                  context: context,
                  title: 'Ramzan Projects',
                  icon: LucideIcons.package,
                  description:
                      'Providing Iftar kits & meals to underprivileged communities',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Ramzan Projects',
                    code: "#ramzan",
                    description:
                        'Provide Iftar Kits & Iftar Meals to underprivileged and needy individuals in more than 20 states.\nIftar Kits Project is one of the main projects of Ideal Relief Trust which was implemented in more than 22 states.  Iftar kits with essential food stuffs for a family are distributed over 52000+ food kits (comprising Iftar Kits & Eid Gifts) during Ramzan across 22 states\nIdeal Relief Trust organizes daily iftar programs in many Masajids, especially for students, needy persons and those who could not reach home on the time of Iftar for any reason. This organization gives preference to those Masajid that have been built by this organization itself.',
                    imagePath: "assets/images/irt/ramadhan-1.jpg",
                    icon: LucideIcons.package,
                    galleryImages: [
                      "assets/images/irt/image47.jpg",
                      "assets/images/irt/image48.jpg",
                      'assets/images/irt/image49.jpg',
                      'assets/images/irt/image51.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Adhahi Projects',
                  icon: LucideIcons.box,
                  description: 'Food packets distribution during Eid ul Azha',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Adhahi Projects',
                    code: "#MedicalCentres",
                    description:
                        'Ideal Relief Trust organised Food Packets distribution on the occasion of Eid ul Azha in those places where the Qurbani is not performed. This organisation distributed food packets in 21+ states benefited to 1 lac+ families. These food packets mostly distributed door to door. Also arrange cooked food in some Jail or any needy camp',
                    imagePath: "assets/images/irt/image60.jpg",
                    icon: LucideIcons.box,
                    galleryImages: [
                      'assets/images/irt/image60.jpg',
                      'assets/images/irt/image61.jpg',
                      'assets/images/irt/image62.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'AQEEQA PROGRAM',
                  icon: LucideIcons.milk,
                  description: 'Aqeeqa program for orphans & needy families',
                  child: const HWTHealthcareServiceDetail(
                    title: 'AQEEQA PROGRAM',
                    code: "#aqeeda",
                    description:
                        'IRT arrange an Aqeeqa in Orphanage, School Hostels and Slum Areas between needy families & students. Through this project many Orphans and needy students and families benefited the meat specially Goat meat. Sometimes we arrange cooked meal in Hostel or Orphanage through Aqeeqa program.',
                    imagePath: "assets/images/irt/image30.jpg",
                    icon: LucideIcons.milk,
                    galleryImages: [
                      'assets/images/irt/image30.jpg',
                      'assets/images/irt/image32.jpg',
                      'assets/images/irt/image33.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Eid Gift to Orphan Students',
                  icon: LucideIcons.gift,
                  description: 'Iftar and Eid gifts for orphan students',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Eid Gift to Orphan Students',
                    code: "#eidGift",
                    description:
                        'Ideal Relief Trust organised Iftar Program for Orphan Students in Delhi, Punjab, Bengal, Assam & Maharashtra where we arrange Iftar and Dinner for Orphans and their mothers. Ideal Relief Trust also distributed Eid Gift between 1000+ Orphan Students ',
                    imagePath: 'assets/images/irt/image37.jpg',
                    icon: LucideIcons.gift,
                    galleryImages: [
                      'assets/images/irt/image37.jpg',
                      'assets/images/irt/image36.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Eid Gift to Imam/Muazzin',
                  icon: LucideIcons.award,
                  description: 'Recognizing services of Imams and Muazzins',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Eid Gift to Imam/Muazzin',
                    code: "#eidGift",
                    description:
                        'Ideal Relief Trust is planning to distribute an Eid Gift to our Imam and Muazzineen in various states in recognition of their unique services.',
                    imagePath: "assets/images/irt/image38.jpg",
                    icon: LucideIcons.award,
                  ),
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
    required IconData icon,
    required String description,
    required Widget child,
    required BuildContext context,
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
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB71C1C).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: const Color(0xFFB71C1C),
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
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12,
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
}
