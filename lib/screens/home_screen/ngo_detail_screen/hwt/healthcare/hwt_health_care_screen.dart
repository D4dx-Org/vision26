import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwt/healthcare/hwt_health_care_service_detail_screen.dart';

class HWTHealthcareServicesScreen extends StatelessWidget {
  const HWTHealthcareServicesScreen({super.key});

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
                            '#Healthcare',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Healthcare Services',
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
                  'The Human Welfare Trust is committed to improving the health and well-being of communities facing significant healthcare challenges. Through a variety of health and nutrition initiatives, we take a holistic approach to addressing the critical medical needs of vulnerable populations, ensuring lasting impact and meaningful change.',
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
                  title: 'Hospitals',
                  icon: LucideIcons.building2,
                  description:
                      'Delivering specialized medical services and advanced treatments',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Hospitals',
                    code: "#Hospitals",
                    description:
                        'Established by HWT in 2011 in Jamia Nagar area of South East Delhi, Al-Shifa Multi-Specialty Hospital provides healthcare services at an affordable cost to underprivileged sections of the society. The hospital ensures better health care services for the welfare of around two million people mainly belonging to lower and middle-income groups of the society residing in its adjacent areas.',
                    imagePath: "assets/images/hwt/Page-3 A(1)_sub image 1.jpg",
                    icon: LucideIcons.building2,
                    features: [
                      '	Number of Beds – 73',
                      'Number of Departments – 24',
                      'Number of OPDs – 12,44,000+',
                      'Number of IPDs – 60,000+',
                      'Number of Surgeries – 13,000+',
                      'Number of Deliveries – 7,500+',
                      'Number of Dialysis Done – 13,000+',
                      'Number of Poor Patients Supported – 1,25,000+',
                    ],
                    stats: {
                      'Surgeries': '13,000+',
                      'Deliveries': '7,500+',
                      'OPDs': '12.4L+',
                    },
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Clinics / Medical Centres',
                  icon: LucideIcons.stethoscope,
                  description:
                      'Access to essential healthcare services in your community',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Clinics / Medical Centres',
                    code: "#MedicalCentres",
                    description:
                        'Human Welfare Trust has constructed 6 clinics/medical centers in Uttar Pradesh, Telangana, West Bengal, Bihar, and Kerala with the objective to provide accessible and affordable healthcare services to underserved communities, improve public health outcomes, and support local healthcare infrastructure through quality medical facilities and trained healthcare professionals.',
                    imagePath: "assets/images/hwt/Page-3 A(2)_sub image 1.jpg",
                    icon: LucideIcons.stethoscope,
                    galleryImages: [
                      'assets/images/hwt/Page-3 A(2)_sub image 1.jpg',
                      'assets/images/hwt/Page-3 A(2)_sub image 2.jpg',
                      'assets/images/hwt/Page-3 A(2)_sub image 3.JPG',
                      'assets/images/hwt/Page-3 A(2)_sub image 4.jpeg'
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Mobile Medical Vans',
                  icon: LucideIcons.truck,
                  description: 'Bringing healthcare services to remote areas',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Mobile Medical Vans',
                    code: "#MobileMedicalVans",
                    description:
                        'These mobile medical vans travel through various slum areas of Delhi and Lucknow. An MBBS doctor onboard provides free consultations and distributes medicines at no charge.',
                    imagePath: "assets/images/hwt/Page-3 A(3)_sub image 1.jpeg",
                    icon: LucideIcons.truck,
                    features: [
                      '	HWT, through its Al Shifa Multi Specialty Hospital, runs a mobile medical van in Delhi benefiting residents of slums across South Delhi area.',
                      'In collaboration with Khidmat Welfare Trust and Zakat and Charitable Foundation (Lucknow), HWT runs another medical van in Lucknow, serving slum dwellers. ',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Ambulance Services',
                  icon: LucideIcons.cross,
                  description:
                      'Emergency medical transportation available 24/7',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Ambulance Services',
                    code: "#Ambulance",
                    description:
                        'HWT offers ambulancde services through its Al-Shifa Multi-Specialty Hospital in New Delhi and through its ambulance that it had donated to Khidmat Welfare Trust in Lucknow. ',
                    imagePath: "assets/images/hwt/Page-3 A(4)_sub image 1.jpg",
                    icon: LucideIcons.cross,
                    galleryImages: [
                      'assets/images/hwt/Page-3 A(4)_sub image 1.jpg',
                      'assets/images/hwt/Page-3 A(4)_sub image 2.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Covid-19 Treatment and Equipment Donation',
                  icon: LucideIcons.shield,
                  description:
                      'Supporting communities with Covid-19 treatment and essential equipment',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Covid-19 Treatment and Equipment Donation',
                    code: "#Covid19",
                    description:
                        'During second wave of Covid-19, HWT launched several initiatives to ensure immediate and affordable access to treatment for those affected by the virus.',
                    imagePath:
                        "assets/images/hwt/Page-3 A(5)_1_sub image 1.jpeg",
                    icon: LucideIcons.shield,
                    features: [
                      'Established and run a temporary Covid Field Hospital at The Scholar School (Abul Fazal Enclave, Delhi) to treat Covid-infected patients.',
                      'Installed an Oxygen Generation Plant at Al-Shifa Multi-Specialty Hospital',
                      'Donated a life-saving ACLS Force ambulance to Al-Shifa (Delhi) and an ambulance to Khidmat Welfare Trust (Lucknow)',
                      'Donated 6 Ventilators, 10 Dialysis Machines, 77 Oxygen Concentrator Machines, and 118 Oxygen Cylinders',
                    ],
                    galleryImages: [
                      'assets/images/hwt/Page-3 A(5)_1_sub image 1.jpeg',
                      'assets/images/hwt/Page-3 A(5)_1_sub image 2.png',
                      'assets/images/hwt/Page-3 A(5)_2_sub image 1.jpg',
                      'assets/images/hwt/Page-3 A(5)_2_sub image 2.jpg',
                      'assets/images/hwt/Page-3 A(5)_3_sub image 1.jpg',
                      'assets/images/hwt/Page-3 A(5)_3_sub image 2.jpg',
                      'assets/images/hwt/Page-3 A(5)_4_sub image 1.jpeg',
                      'assets/images/hwt/Page-3 A(5)_4_sub image 2.jpg',
                      'assets/images/hwt/Page-3 A(5)_4_sub image 3.jpeg',
                      'assets/images/hwt/Page-3 A(5)_4_sub image 4.jpeg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Financial Help to Poor Patients',
                  icon: LucideIcons.dollarSign,
                  description:
                      'Providing financial assistance for critical treatments',
                  child: const HWTHealthcareServiceDetail(
                    title: 'Financial Help to Poor Patients',
                    code: "#FinancialHelp",
                    description:
                        'HWT provides financial help to various poor and needy patients, particularly dialysis patients to get treated at its Al-Shifa Multi-Specialty Hospital.',
                    imagePath: "assets/images/hwt/Page-3 A(6)_sub image 1.jpeg",
                    icon: LucideIcons.dollarSign,
                    galleryImages: [
                      'assets/images/hwt/Page-3 A(6)_sub image 1.jpeg',
                      'assets/images/hwt/Page-3 A(6)_sub image 2.jpeg',
                    ],
                  ),
                ),
              ]),
            ),
          ),

          // Bottom Spacing
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
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
