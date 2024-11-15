import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class FinancialInclusionScreen extends StatelessWidget {
  const FinancialInclusionScreen({super.key});

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
          'Financial Inclusion/Microfinance',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section with About and Financial Overview
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // About Microfinance
                  Expanded(
                    flex: 3,
                    child: AboutSection(),
                  ),
                  SizedBox(width: 24),
                  // Financial Overview
                  Expanded(
                    flex: 2,
                    child: FinanceStats(),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Schemes Section
              const SchemesList(),
              const SizedBox(height: 24),
              // Gallery Section
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
              const SizedBox(height: 16),
              const ImagesGrid(),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
            'About Microfinance',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'The Interest-free microloans/microfinance are being provided through the branches of Interest-free cooperatives. The loans/finances are being provided to the low income group for their consumption as well as business activities. The microfinancing schemes are specially designed to serve the need of beneficiaries. The cooperatives adhere to the Interest-free principles in all the transactions.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}

// Previous SchemesList and SchemeItem remain the same
class SchemesList extends StatelessWidget {
  const SchemesList({super.key});

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
            'Available Schemes',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          ...schemes.map((scheme) => SchemeItem(scheme: scheme)),
        ],
      ),
    );
  }
}

class SchemeItem extends StatelessWidget {
  final Map<String, dynamic> scheme;

  const SchemeItem({super.key, required this.scheme});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(scheme['icon'] as IconData, color: Colors.red[700], size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  scheme['title'] as String,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (scheme['description'] != null)
                  Text(
                    scheme['description'] as String,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      height: 1.4,
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

final List<Map<String, dynamic>> schemes = [
  {
    'icon': LucideIcons.banknote,
    'title': 'Demand Loan',
    'description': 'For non-productive purpose',
  },
  {
    'icon': LucideIcons.warehouse,
    'title': 'Murabaha/Cost-plus Financing',
    'description': 'For machinery, equipment, home appliances etc.',
  },
  {
    'icon': LucideIcons.car,
    'title': 'Ijarah/Rental Finance',
    'description': 'Mostly for light machinery and light commercial vehicle',
  },
  {
    'icon': LucideIcons.users,
    'title': 'Diminishing Partnership',
    'description':
        'Recently introduced instrument for small working capital finance on partnership basis',
  },
];

class FinanceStats extends StatelessWidget {
  const FinanceStats({super.key});

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
            'Financial Overview',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          _buildFinanceItem(
            'Fiscal Year 2023-24',
            'INR 625 crores',
            'provided finance under the microfinancing schemes',
          ),
          const SizedBox(height: 16),
          _buildFinanceItem(
            'Last 10 Years',
            'INR 2206 crores',
            'facilitated financing through Interest-free Microfinance movement',
          ),
        ],
      ),
    );
  }

  Widget _buildFinanceItem(String period, String amount, String description) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            period,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            amount,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
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
    );
  }
}

class ImagesGrid extends StatelessWidget {
  const ImagesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        List images = [
          SahulatContent.sahulat6,
          SahulatContent.sahulat7,
          SahulatContent.sahulat8,
          SahulatContent.sahulat9,
          SahulatContent.sahulat10,
          SahulatContent.sahulat11,
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

// Keep the previous schemes data list