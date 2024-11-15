import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/helper/navigation_helper.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/masawat/financial_support/financial_support_detail_screen.dart';

class MasawatFinancialPage extends StatelessWidget {
  const MasawatFinancialPage({super.key});

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
                            '#Finance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Financial Services',
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
                  'Masawat Livelihood Foundation provides financial support to help individuals grow their businesses and achieve self-sufficiency. Once the support is repaid, it is reinvested to assist others in need, creating a continuous cycle of empowerment. Our mission is to improve livelihoods, create better income opportunities, and promote long-term financial independence for all.',
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
                  title: 'Micro-Scale Livelihood Initiative',
                  icon: LucideIcons.store, // Small shop/store icon
                  description:
                      'Financial support up to ₹25,000 for small businesses in rural and semi-urban areas',
                  child: const MasawatFinancialDetailScreen(
                    title: 'Micro-Scale Livelihood Initiative',
                    code: "#Micro-Scale",
                    description:
                        'Masawat Livelihood Foundation offers financial assistance of up to 25,000 INR to support sustainable livelihood initiatives mostly rural and semi urban areas \nMasawat Livelihood Foundation focuses on supporting livelihood development, particularly in rural areas, semi-urban regions, and urban slums. Our mission is to provide financial assistance and create opportunities for individuals who are struggling to earn a basic income, helping them improve their living conditions and sustain their daily needs.',
                    imagePath: "assets/images/masawat/3A-1-1.jpg",
                    icon: LucideIcons.store,
                    stats: [
                      'Push & Pull Cart',
                      'Tea Stalls',
                      'Tailoring Shops',
                      'Food Stalls',
                    ],
                    galleryImages: [
                      "assets/images/masawat/3A-1-1.jpg",
                      'assets/images/masawat/3A-1-2.jpg',
                      'assets/images/masawat/3A-1-3.jpg',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Small-Scale Livelihood Initiative',
                  icon: LucideIcons.warehouse, // Shop icon for retail ventures
                  description:
                      'Support up to ₹50,000 for retail ventures like garment, stationery, and grocery shops',
                  child: const MasawatFinancialDetailScreen(
                    title: 'Small-Scale Livelihood Initiative',
                    code: "#Small-Scale",
                    description:
                        'Masawat Livelihood Foundation provides financial support of up to 50,000 INR for a variety of livelihood ventures, including garment, stationery, grocery, and electric goods, as well as mobile shops. This assistance helps multiple individuals start and sustain their own businesses, fostering long-term economic stability',
                    imagePath: "assets/images/masawat/3A-2-2.jpg",
                    icon: LucideIcons.warehouse,
                    galleryImages: [
                      'assets/images/masawat/3A-2-1.jpg',
                      'assets/images/masawat/3A-2-2.jpg',
                      'assets/images/masawat/3A-2-3.jpg',
                      'assets/images/masawat/3A-2-4.jpg',
                    ],
                    stats: [
                      'Grocery Stock',
                      'Garment Stock',
                      'Stationary Stock',
                      'Mobile Shop Stock',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Medium-Scale Livelihood Initiative',
                  icon: LucideIcons.building2, // Larger business/warehouse icon
                  description:
                      'Funding up to ₹1,00,000 for established businesses like poultry farms and pharmacies',
                  child: const MasawatFinancialDetailScreen(
                    title: 'Medium-Scale Livelihood Initiative',
                    code: "#Medium-Scale",
                    description:
                        'Masawat Livelihood Foundation offers financial support of up to 1,00,000 INR across a range of sectors, such as poultry farming, salons, pharmacies, and more. This assistance is provided to multiple individuals, empowering them to create and sustain their own livelihood opportunities for long-term growth.',
                    imagePath: "assets/images/masawat/3A-3-1.jpg",
                    icon: LucideIcons.building2,
                    galleryImages: [
                      "assets/images/masawat/3A-3-1.jpg",
                      "assets/images/masawat/3A-3-2.jpg",
                    ],
                    stats: [
                      'Electric Stock',
                      'Poultry Farm',
                      'Salon & Beauty Parlor',
                      'Pharmacy',
                    ],
                  ),
                ),
                _buildServiceCard(
                  context: context,
                  title: 'Large-Scale Livelihood Initiative',
                  icon:
                      LucideIcons.factory, // Manufacturing/large business icon
                  description:
                      'Support for small manufacturing units and commercial vehicle ventures',
                  child: const MasawatFinancialDetailScreen(
                    title: 'Large-Scale Livelihood Initiative',
                    code: "#Large-Scale",
                    description:
                        'Masawat Livelihood Foundation offered financial support for small manufacturing units and electric rickshaws, along with other livelihood initiatives. This assistance is available across multiple sectors, to help them build sustainable livelihoods.',
                    imagePath: "assets/images/masawat/3A-4-2.jpg",
                    icon: LucideIcons.factory,
                    galleryImages: [
                      "assets/images/masawat/3A-4-1.jpg",
                      "assets/images/masawat/3A-4-2.jpg",
                    ],
                    stats: [
                      'Electric Rickshaw',
                      'Small Scale manufacturing units',
                      'Flour and Oil Processing',
                      'Goat Farm',
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
