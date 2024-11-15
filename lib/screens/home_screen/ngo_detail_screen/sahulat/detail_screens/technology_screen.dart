import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            LucideIcons.arrowLeft,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Technology',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Row(
        children: [
          // Left Panel - Information
          const Expanded(
            flex: 3,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutTechnologyCard(),
                  SizedBox(height: 24),
                  SoftwareInfoCard(),
                  SizedBox(height: 24),
                  FeaturesCard(),
                ],
              ),
            ),
          ),
          // Right Panel - Screenshots
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[100],
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[700],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ScreenshotsGrid(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutTechnologyCard extends StatelessWidget {
  const AboutTechnologyCard({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Technology',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Sahulat Microfinance Society is committed to ensure accountability of cooperative management, transparency for transactions and security of all the stakeholder. Thus, Sahulat collaborated with a tech company 'PEOCIT' to customize a core banking software to be used in the Interest-free Cooperative Societies.",
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class SoftwareInfoCard extends StatelessWidget {
  const SoftwareInfoCard({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                LucideIcons.layers,
                color: Colors.red[700],
                size: 24,
              ),
              const SizedBox(width: 12),
              Text(
                'K3One Software',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Name of the software is K3One, it is a state of the art core banking software to full fill all the needs of the cooperative credit societies.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 16),
          const Text(
            'The software is capable of providing mobile banking, internet banking, ATM etc. meaning thereby, the facilities related to the mainstream transaction ecosystem. These feature are already in use among the conventional cooperatives, yet to be introduced in the Interest-free Cooperatives.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class FeaturesCard extends StatelessWidget {
  const FeaturesCard({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key Features',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          ...features.map((feature) => FeatureItem(feature: feature)),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final Map<String, dynamic> feature;

  const FeatureItem({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(
            feature['icon'] as IconData,
            color: Colors.red[700],
            size: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              feature['title'] as String,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenshotsGrid extends StatelessWidget {
  const ScreenshotsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        List images = [
          SahulatContent.sahulat19,
          SahulatContent.sahulat20,
          SahulatContent.sahulat21,
          SahulatContent.sahulat22,
          SahulatContent.sahulat23,
        ];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

// Data
final List<Map<String, dynamic>> features = [
  {
    'icon': LucideIcons.smartphone,
    'title': 'App based deposit collection',
  },
  {
    'icon': LucideIcons.messageSquare,
    'title': 'SMS receipt for deposits, withdrawals, repayments',
  },
  {
    'icon': LucideIcons.book,
    'title': 'Passbook facility for members',
  },
  {
    'icon': LucideIcons.lineChart,
    'title': 'Online tracking of business for the management',
  },
  {
    'icon': LucideIcons.cloud,
    'title': 'Data safety through cloud server',
  },
];
