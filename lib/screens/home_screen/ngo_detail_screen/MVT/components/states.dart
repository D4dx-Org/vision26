import 'package:flutter/material.dart';
import 'package:vision_2026/constants/color_class.dart';

// First, create a model for village data
class StateVillages {
  final String state;

  final List<String> villages;

  StateVillages({
    required this.state,
    required this.villages,
  });
}

final List<StateVillages> statesData = [
  StateVillages(
    state: 'Haryana',
    villages: [
      'Satakpuri',
      'Patakpur',
      'Sukhpuri',
      'Muhammadpur',
      'Habitka',
      'Balai',
      'Khajlikalan',
      'Prithibas',
      'Khandawali',
      'Kailgaon',
      'Marora',
    ],
  ),
  StateVillages(
    state: 'Uttar Pradesh',
    villages: [
      'Bamrauli',
      'Salmapur',
      'Basoliya',
      'Urolia',
      'Saidpur',
      'Bilhari',
      'Qurbanpur',
      'Islmailpur',
      'Jhajrau',
    ],
  ),
  StateVillages(
    state: 'Bihar',
    villages: [
      'Mehboobnagar',
      'Basantpur',
      'Bochi',
      'Dehti',
      'Manikpur',
      'Saduvaily',
    ],
  ),
  StateVillages(
    state: 'Odisha',
    villages: [
      'Danogahir',
      'Haripur',
      'Barahal',
    ],
  ),
  StateVillages(
    state: 'Jharkhand',
    villages: [
      'Manikpur',
      'Jhamujharna',
      'Balajor',
      'Rampur',
    ],
  ),
  StateVillages(
    state: 'Assam',
    villages: [
      'Sreegram',
      'Motichar',
      'Hatipota',
    ],
  ),
  StateVillages(
    state: 'Madhya Pradesh',
    villages: [
      'Behadwa',
      'Kathiwara',
    ],
  ),
  StateVillages(
    state: 'West Bengal',
    villages: [
      'Chapra',
      'Khanta',
      'Bindyanandpur',
      'Sulitala',
      'Esserpara',
      'Harinkhola',
      'Manjilkhati',
      'Pathoghata',
      'Raypur',
      'Kurulgacha',
      'Boxerati',
    ],
  ),
  StateVillages(
    state: 'Rajasthan',
    villages: [
      'Fatehgarh',
      'Bhadia Bau',
      'Tejpura',
    ],
  ),
];

// Create a widget for showing state details with villages
class StateDetailScreen extends StatelessWidget {
  final StateVillages stateData;

  const StateDetailScreen({
    super.key,
    required this.stateData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header with Gradient
          SliverAppBar(
            expandedHeight: 200,
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
                    left: 24,
                    right: 24,
                    bottom: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_city,
                              color: Colors.white,
                              size: 24,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                stateData.state,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Villages List
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: const Text(
                      'Adopted Villages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: stateData.villages.length,
                    itemBuilder: (context, index) => TextButton(
                      onPressed: null,
                      //  () {
                      //   // Navigate to village detail page
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => VillageDetailScreen(
                      //         stateName: stateData.state,
                      //         villageName: stateData.villages[index],
                      //       ),
                      //     ),
                      //   );
                      // },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '${index + 1}.',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            stateData.villages[index],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
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

// Create a template for village detail pages
class VillageDetailScreen extends StatelessWidget {
  final String stateName;
  final String villageName;

  const VillageDetailScreen({
    super.key,
    required this.stateName,
    required this.villageName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        title: Text(villageName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Details for $villageName, $stateName',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Add more village details here
            ],
          ),
        ),
      ),
    );
  }
}
