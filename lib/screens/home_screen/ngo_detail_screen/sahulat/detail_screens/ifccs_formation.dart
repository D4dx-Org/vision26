import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class IFCCSFormationScreen extends StatelessWidget {
  const IFCCSFormationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(LucideIcons.arrowLeft),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('IFCCS Formation'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InfoCard(),
            const SizedBox(height: 24),
            const Text(
              'Formation Process',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ...formationSteps.map((step) => StepCard(step: step)),
            Container(
              color: Colors.grey[100],
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const BranchStatsCard(),
                    const SizedBox(height: 24),
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          SahulatContent.sahulat15,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // 2 images here
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                SahulatContent.sahulat16,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                SahulatContent.sahulat17,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'IFCCS Formation',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Sahulat helps the local promoter groups to form Cooperative Credit Societies at district level and tehsil/taluka level. Sahulat helps the socially active group to form a promoter, provides them orientation about the functioning of Interest-free cooperatives.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class StepCard extends StatelessWidget {
  final Map<String, dynamic> step;

  const StepCard({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Row(
          children: [
            Icon(
              step['icon'] as IconData,
              size: 24,
              color: Colors.red,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                step['title'] as String,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BranchStatsCard extends StatelessWidget {
  const BranchStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Branch Distribution',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3,
              crossAxisSpacing: 14,
              mainAxisSpacing: 16,
            ),
            itemCount: branchStats.length,
            itemBuilder: (context, index) {
              return StatItem(
                state: branchStats[index]['state'] as String,
                branches: branchStats[index]['branches'] as int,
              );
            },
          ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String state;
  final int branches;

  const StatItem({
    super.key,
    required this.state,
    required this.branches,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            state,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              branches.toString(),
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Data
final List<Map<String, dynamic>> formationSteps = [
  {
    'icon': LucideIcons.fileText,
    'title': 'Preparation of legal documentation for registration',
  },
  {
    'icon': LucideIcons.building,
    'title': 'Preparation for branch establishment',
  },
  {
    'icon': LucideIcons.users,
    'title':
        'Formation of bodies e.g. Board of Directors, Loan & Advancement Committee',
  },
  {
    'icon': LucideIcons.userPlus,
    'title': 'Recruitment of Staff',
  },
  {
    'icon': LucideIcons.graduationCap,
    'title': 'Orientation and training & of Directors and staff',
  },
  {
    'icon': LucideIcons.laptop,
    'title': 'Technology',
  },
  {
    'icon': LucideIcons.clipboardList,
    'title': 'Research',
  },
];

final List<Map<String, dynamic>> branchStats = [
  {'state': 'Bihar', 'branches': 8},
  {'state': 'UP', 'branches': 4},
  {'state': 'Delhi', 'branches': 2},
  {'state': 'Jharkhand', 'branches': 2},
  {'state': 'Kerala', 'branches': 3},
  {'state': 'Tamil Nadu', 'branches': 3},
  {'state': 'Karnataka', 'branches': 8},
  {'state': 'Gujarat', 'branches': 8},
  {'state': 'Maharashtra', 'branches': 31},
  {'state': 'Telangana', 'branches': 30},
  {'state': 'Madhya Pradesh', 'branches': 3},
  {'state': 'Chhattisgarh', 'branches': 1},
  {'state': 'Andhra Pradesh', 'branches': 14},
];
