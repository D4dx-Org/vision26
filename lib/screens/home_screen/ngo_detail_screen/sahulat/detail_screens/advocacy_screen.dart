import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class AdvocacyScreen extends StatelessWidget {
  const AdvocacyScreen({super.key});

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
          'Advocacy',
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
              const AboutAdvocacyCard(),
              const SizedBox(height: 5),
              const PolicyAdvocacyCard(),
              const SizedBox(height: 5),
              const PropagationCard(),
              const SizedBox(height: 5),
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

class AboutAdvocacyCard extends StatelessWidget {
  const AboutAdvocacyCard({super.key});

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
            'About Advocacy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Sahulat does 2 types of advocacies for the Interest-free Microfinance through cooperatives.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 16),
          ...advocacyTypes.map((type) => AdvocacyTypeItem(type: type)),
        ],
      ),
    );
  }
}

class PolicyAdvocacyCard extends StatelessWidget {
  const PolicyAdvocacyCard({super.key});

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
            'Policy Advocacy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          ...policyAdvocacies.map((policy) => PolicyItem(policy: policy)),
        ],
      ),
    );
  }
}

class PropagationCard extends StatelessWidget {
  const PropagationCard({super.key});

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
            'Propagation of Sahulat Model',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
          ...achievements
              .map((achievement) => AchievementItem(achievement: achievement)),
        ],
      ),
    );
  }
}

class AdvocacyTypeItem extends StatelessWidget {
  final Map<String, dynamic> type;

  const AdvocacyTypeItem({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(type['icon'] as IconData, color: Colors.red[700], size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              type['text'] as String,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

class PolicyItem extends StatelessWidget {
  final Map<String, String> policy;

  const PolicyItem({super.key, required this.policy});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(LucideIcons.check, color: Colors.red[700], size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              policy['text']!,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class AchievementItem extends StatelessWidget {
  final Map<String, String> achievement;

  const AchievementItem({super.key, required this.achievement});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(LucideIcons.award, color: Colors.red[700], size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  achievement['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (achievement['year'] != null)
                  Text(
                    achievement['year']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
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

class ImagesGridView extends StatelessWidget {
  const ImagesGridView({super.key});

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
      itemCount: 5,
      itemBuilder: (context, index) {
        List images = [
          SahulatContent.sahulat1,
          SahulatContent.sahulat2,
          SahulatContent.sahulat3,
          SahulatContent.sahulat4,
          SahulatContent.sahulat5,
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
final List<Map<String, dynamic>> advocacyTypes = [
  {
    'icon': LucideIcons.building2,
    'text':
        'Advocacy with the policy makers and regulators on the policies related to cooperatives, finance, taxation, which directly or indirectly affect the Interest-free Cooperatives.',
  },
  {
    'icon': LucideIcons.presentation,
    'text':
        'Showcasing the Sahulat model of Interest-free Cooperatives in various national and international platforms.',
  },
];

final List<Map<String, String>> policyAdvocacies = [
  {'text': 'Inclusion of Credit Cooperative Societies in Microfinance Bill'},
  {
    'text':
        'Exemption to Credit Cooperative Societies in Deposit Banning Bill 2016'
  },
  {'text': 'Exemption to Credit Cooperative Societies in BURD Act 2019'},
  {'text': 'MSCS Act & Rule 2023'},
  {
    'text':
        'Provisions of Income Tax Act i.e. Section 194N, 269S, 269T, 80P etc.'
  },
];

final List<Map<String, String>> achievements = [
  {
    'title':
        'Interest-free Microfinance Model of the Year by Islamic Finance Forum for South Asia',
    'year': '2017'
  },
  {
    'title':
        'Best Interest-free Microfinance Model by Global Islamic Microfinance Forum',
    'year': '2017'
  },
  {
    'title':
        'Interest-free Microfinance Model of the Year by Islamic Finance Forum for South Asia',
    'year': '2018'
  },
  {
    'title':
        'Best Interest-free Microfinance Model by Global Islamic Microfinance Forum',
    'year': '2018'
  },
  {
    'title':
        'Inclusion of Sahulat Model of Interest-free Microfinance through Cooperative Societies in Bharat Microfinance Report 2018'
  },
  {
    'title':
        'Interest-free Microfinance Model of the Year by Islamic Finance Forum for South Asia',
    'year': '2019'
  },
  {
    'title': 'Community Service Award by Delhi Minorities Commission',
    'year': '2021'
  },
  {
    'title':
        'Interest-free Microfinance Model of the Year by Islamic Finance Forum for South Asia',
    'year': '2023'
  },
];
