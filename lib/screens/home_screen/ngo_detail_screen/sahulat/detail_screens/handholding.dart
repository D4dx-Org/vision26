import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class HandholdingSupportScreen extends StatelessWidget {
  const HandholdingSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon:
              const Icon(LucideIcons.arrowLeft, color: Colors.white, size: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Handholding Support to Cooperatives',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AboutSupportCard(),
              const SizedBox(height: 24),
              const SupportListCard(),
              const SizedBox(height: 24),
              Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
              const SizedBox(height: 16),
              const ImagesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutSupportCard extends StatelessWidget {
  const AboutSupportCard({super.key});

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
            'Sahulat provides following handholding support to form and function the Interest-free cooperative credit societies:',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}

class SupportListCard extends StatelessWidget {
  const SupportListCard({super.key});

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
            'Support Services',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          ...supportServices.map((service) => SupportItem(service: service)),
        ],
      ),
    );
  }
}

class SupportItem extends StatelessWidget {
  final Map<String, dynamic> service;

  const SupportItem({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            service['icon'] as IconData,
            color: Colors.red[700],
            size: 24,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              service['text'] as String,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

class ImagesGridView extends StatelessWidget {
  const ImagesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemCount: 3, // Single diagram image
      itemBuilder: (context, index) {
        List images = [
          SahulatContent.sahulat12,
          SahulatContent.sahulat13,
          SahulatContent.sahulat14,
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
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }
}

// Data
final List<Map<String, dynamic>> supportServices = [
  {
    'icon': LucideIcons.scale,
    'text': 'Legal support to register a cooperative',
  },
  {
    'icon': LucideIcons.settings,
    'text': 'Operational support to form and run the cooperatives',
  },
  {
    'icon': LucideIcons.graduationCap,
    'text': 'Conceptual training of the directors and staff',
  },
  {
    'icon': LucideIcons.briefcase,
    'text':
        'Training of directors on business management, business monitoring and compliances',
  },
  {
    'icon': LucideIcons.userCog,
    'text':
        'Training of staff on execution of business and result oriented work distribution',
  },
  {
    'icon': LucideIcons.fileCheck,
    'text': 'Development of Shariah compliant financial schemes',
  },
  {
    'icon': LucideIcons.laptop,
    'text': 'Induction, collaboration and customization for software',
  },
  {
    'icon': LucideIcons.building2,
    'text': 'Advocacy on policies',
  },
  {
    'icon': LucideIcons.megaphone,
    'text': 'Advocacy for propagation of Interest free model',
  },
  {
    'icon': LucideIcons.users,
    'text':
        'Collaborations with other organizations for the advancement of the object.',
  },
];
