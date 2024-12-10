import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/hwf_content.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/hwf/education/capacity_building_schools/supported_schools_screen.dart';
import 'models/school.dart';

class CapacityBuildingScreen extends StatelessWidget {
  const CapacityBuildingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Hero Header with Image
          SliverAppBar(
            expandedHeight: 300,
            toolbarHeight: 80,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    HwfContent.capacityBuildingofBuilding1,
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
              title: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'School Capacity Building',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: const Color(0xFFB71C1C),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Stats Section
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  _buildStatCard(
                    number: '65',
                    label: 'Schools\nSupported',
                    icon: LucideIcons.school2,
                  ),
                  const SizedBox(width: 16),
                  _buildStatCard(
                    number: '11',
                    label: 'States\nCovered',
                    icon: LucideIcons.map,
                  ),
                  const SizedBox(width: 16),
                  _buildStatCard(
                    number: '1000+',
                    label: 'Students\nImpacted',
                    icon: LucideIcons.users,
                  ),
                ],
              ),
            ),
          ),

          // Mission Statement
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
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
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB71C1C).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      LucideIcons.target,
                      color: Color(0xFFB71C1C),
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "HWF is committed to enhancing under-resourced schools by adopting them or providing essential funding to build critical infrastructure. To date, HWF has supported 65 schools across Assam, Bihar, Delhi, Gujarat, Jharkhand, Haryana, Madhya Pradesh, Maharashtra, Rajasthan, Uttar Pradesh, West Bengal, and Punjab.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey[800],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          // States Coverage
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'States Coverage',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                    ),
                    itemCount: states.length,
                    itemBuilder: (context, index) =>
                        _buildStateChip(states[index], context),
                  ),
                ],
              ),
            ),
          ),

          // Key Initiatives
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Key Initiatives',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInitiativeCard(
                    icon: LucideIcons.building,
                    title: 'Infrastructure Development',
                    description:
                        'Building and renovating classrooms, libraries, and basic facilities',
                  ),
                  const SizedBox(height: 12),
                  _buildInitiativeCard(
                    icon: LucideIcons.graduationCap,
                    title: 'Teacher Training',
                    description: 'Capacity building workshops for teachers',
                  ),
                ],
              ),
            ),
          ),
          // Image Gallery Section
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Impact Gallery',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemCount: HwfContent.capacityBuildingImagesList.length,
                    itemBuilder: (context, index) => _buildGalleryImage(
                        HwfContent.capacityBuildingImagesList[index]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Add this method to your class
  Widget _buildGalleryImage(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required String number,
    required String label,
    required IconData icon,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: const Color(0xFFB71C1C),
              size: 24,
            ),
            const SizedBox(height: 8),
            Text(
              number,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB71C1C),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStateChip(String state, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SupportedSchoolsScreen(
              state: state,
              schools: schoolsByState[state] ?? <School>[],
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            state,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xFFB71C1C),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget _buildInitiativeCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFB71C1C).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: const Color(0xFFB71C1C),
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
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
          ),
        ],
      ),
    );
  }
}

// Sample data
final List<String> states = [
  'West Bengal',
  'Uttar Pradesh',
  'Haryana',
  'Rajasthan',
  'Bihar',
  'Jharkhand',
  'Madhya Pradesh',
  'Assam',
  'New Delhi',
  'Maharashtra',
  'Gujarat',
  'Manipur',
];

final Map<String, List<School>> schoolsByState = {
  'West Bengal': [
    School(
      district: 'Malda',
      name: 'Ar-Rahman Social Welfare Society Primary School',
      address: 'Bidhyananda, Borai, Malda, West Bengal',
    ),
    School(
      district: 'Howrah',
      name: 'Shishu Shiksha Niketan',
      address:
          'Sankharidaha Chunir Math, P.O. Begri, P.S. Domjur, Dist Howrah, West Bengal',
    ),
    School(
      district: 'North 24 Parganas',
      name: 'Al Manar Adarsh Shiksha Shibir',
      address:
          'Village Goalpota, P.O. Chouhata, P.O. Haroa, North 24 Parganas, Pin 743425',
    ),
    School(
      district: 'South 24 Pargana',
      name: 'Millat Girls Academy',
      address:
          'Village Dakhin Janardanpur, P.O. + P.S-Dholahat, South 24 Parganas, Pin-743399',
    ),
    School(
      district: 'Murshidabad',
      name: 'Madrasa Jamiatul Huda',
      address:
          'Umarpur, P.O. Ghorshala, Pin 742229, P.S. Raghunathganj, Murshidabad',
    ),
    School(
      district: 'Murshidabad',
      name: 'An Najat School',
      address:
          'Village Chharkatola, P.O. Sahabajpur, PS Kaliachak, Dist Malda, Pin 732201',
    ),
    School(
      district: 'Murshidabad',
      name: 'Mount Hira School',
      address: 'Shankarpur, District Murshidabad, West Bengal',
    ),
    School(
      district: 'Cooch Behar',
      name: 'Cooch Behar Modern Academy',
      address:
          'Village Jibramerkholi, PO. Putimari, PS Kotwali, Cooch Behar, Pin 736157',
    ),
    School(
      district: 'Medinapur',
      name: 'Darussalam School',
      address:
          'Guaberia, P.O. Thabakhali, P.S. Sutahata, Purbo Medinapur, Pin 721635',
    ),
    School(
      district: 'Dinajpur',
      name: 'Islamic Ideal Mission Dakshin Dinajpur School',
      address: 'District Dakshin Dinajpur, West Bengal',
    ),
    School(
      district: 'North Dinajpur',
      name: 'Jamiatul Ansar Lil Banat',
      address: 'District North Dinajpur, West Bengal',
    ),
  ],
  'Uttar Pradesh': [
    School(
      district: 'Mathura',
      name: 'Darsgah Islami',
      address: 'Village Sahar, District Mathura, Uttar Pradesh',
    ),
    School(
      district: 'Buland Shahar',
      name: 'M I J High School',
      address: 'Julepura, Buland Shahar, Uttar Pradesh',
    ),
    School(
      district: 'Bijnor',
      name: 'Jametul-Muhsinat',
      address: 'Basta, Bijnor, Uttar Pradesh',
    ),
    School(
      district: 'Ghaziabad',
      name: 'Madrasa Falah-e-Aam Junior High School',
      address: 'Talimabad, Tiyala, Hapur, Ghaziabad - 245101',
    ),
    School(
      district: 'Muzaffar Nagar',
      name: 'Mahadul Banat Al Islami',
      address: 'Mustafabad Colony, Muzaffar Nagar, Uttar Pradesh',
    ),
    School(
      district: 'Badaun',
      name: 'Madrasa Darsgah-E-Islami',
      address: 'Uraulia, Badaun, Uttar Pradesh',
    ),
    School(
      district: 'Bijnor',
      name: 'Scholar Public School',
      address: 'Nagina, Bijnor, UP West',
    ),
    School(
      district: 'Mainpuri',
      name: 'Al Falah Public School',
      address: 'Kurawli, Mainpuri - 205265, Uttar Pradesh',
    ),
    School(
      district: 'Bareily',
      name: 'Darsgah-E Islami',
      address: 'Bareily, Uttar Pradesh',
    ),
    School(
      district: 'Hapur',
      name: 'Falah E Aam Junior High School',
      address: 'Tiyala, Hapur, Uttar Pradesh',
    ),
    School(
      district: 'Deoria',
      name: 'A.J.I Primary School',
      address: 'Salempur, Deoria, Uttar Pradesh',
    ),
    School(
      district: 'Jhansi',
      name: 'Mother Ayesha Public School',
      address: 'Taj Compound, Nandanpura, Jhansi, Uttar Pradesh',
    ),
    School(
      district: 'Allahabad',
      name: 'Al Ansar Public School',
      address: 'Phoolpur, Allahabad, Uttar Pradesh',
    ),
    School(
      district: 'Unnao',
      name: 'Darsgah-E-Islami',
      address: 'Miyaganj, Unnao, Uttar Pradesh',
    ),
  ],
  'Haryana': [
    School(
      district: 'Palwal',
      name: 'Al Huda Public School',
      address: 'V.P.O Uttawar, Tah Hathin, Palwal, Haryana',
    ),
    School(
      district: 'Mewat',
      name: 'New Cresent Public School',
      address: 'Village Rehpuwa, Po Pinagwa, Mewat, Haryana',
    ),
    School(
      district: 'Mewat',
      name: 'Al Falah Model School',
      address: 'Bhadas, Mewat, Haryana',
    ),
    School(
      district: 'Nuh',
      name: 'B.H. Modern Public School',
      address: 'Pinangwan, M H Police Choki, District Nuh, Haryana',
    ),
    School(
      district: 'Mewat',
      name: 'Govt. Sr. Sec. School',
      address: 'Firozpur Jhirka, Mewat, Haryana',
    ),
    School(
      district: 'Nuh',
      name: 'Golden Kids School',
      address: 'Badarpur, Nagina, District Nuh, Mewat, Haryana',
    ),
    School(
      district: 'Nuh',
      name: 'Al Hilal Public School',
      address: 'V.P.O Shikrawa, Tah Punhana, Nuh, Haryana',
    ),
    School(
      district: 'Nuh',
      name: 'Star Modern Public School',
      address: 'V.P.O Shikrawa, Tah Punhana, Nuh, Haryana',
    ),
    School(
      district: 'Faridabad',
      name: 'I.K. Convent School',
      address: 'Vill Khandawali, Tah Ballabgarh, Faridabad, Haryana',
    ),
  ],
  'Rajasthan': [
    School(
      district: 'Sawai Madhepur',
      name: 'Darsgah e Islami Secondary School',
      address: 'Chaan, District Sawai Madhepur, Rajasthan',
    ),
    School(
      district: 'Barmer',
      name: 'M V M Public School',
      address: 'Pandhi ka Paar, Barmer, Rajasthan',
    ),
    School(
      district: 'Tonk',
      name: 'Madrasa Banatul Muslimeen Samiti',
      address: 'Nayab Sahih Ki Naal, Tonk - 304001, Rajasthan',
    ),
    School(
      district: 'Nagaur',
      name: 'Red Rose Public School',
      address: 'Makrana, District Nagaur, Rajasthan',
    ),
    School(
      district: 'Ajmer',
      name: 'Iqra Secondary School',
      address: 'Beawar, Ajmer, Rajasthan',
    ),
  ],
  'Bihar': [
    School(
      district: 'Muzaffarpur',
      name: 'Hazrat Ali Academy',
      address: 'Muzaffarpur, Bihar',
    ),
    School(
      district: 'Nalanda',
      name: 'Darsgah e Islami Educational & Welfare Society',
      address: 'Islampur, Nalanda, Bihar',
    ),
    School(
      district: 'Basmatia',
      name: 'Darsgah-E-Islami',
      address: 'Basmatia, Bihar',
    ),
  ],
  'Jharkhand': [
    School(
      district: 'Ramgarh',
      name: 'Islamic Academy',
      address: 'Ramgarh, Jharkhand',
    ),
    School(
      district: 'Hazaribagh',
      name: 'Al Huda Public School',
      address: 'Village Banha, Po Banha, Hazaribagh, Jharkhand',
    ),
    School(
      district: 'Jamshedpur',
      name: 'Al Manar Scholar School',
      address: 'Jamshedpur, Jharkhand',
    ),
  ],
  'Madhya Pradesh': [
    School(
      district: 'Jabalpur',
      name: 'Darsgah e Islami Higher Secondary School',
      address: 'Plot No 4731/1 At Amkhera, Jabalpur, Madhya Pradesh',
    ),
    School(
      district: 'Ujjain',
      name: 'Jamia Islamia Anjuman Noorul Islam',
      address:
          'Shikshan Samiti, Naguri Colony, Mahidpur, Ujjain, Madhya Pradesh',
    ),
    School(
      district: 'Rankai',
      name: 'Darsgah Iqra School',
      address: 'Rankai, Madhya Pradesh',
    ),
  ],
  'Assam': [
    School(
      district: 'Nalbari',
      name: 'Hazrat Ali Model Academy',
      address: 'P.O. Rampur, Nalbari, Assam',
    ),
    School(
      district: 'Hojai',
      name: 'Al Hasan Academy',
      address: 'Hidayat Nagar, Rahmat Nagar, Charing, Nagaon, Hojai, Assam',
    ),
    School(
      district: 'Dibrugarh',
      name: 'Rameen Public School',
      address: 'Dibrugarh, Assam',
    ),
    School(
      district: 'Badarpur',
      name: 'Al Ameen Academy',
      address: 'Badarpur, Assam',
    ),
    School(
      district: 'Cachar',
      name: 'Al Ameen Academy',
      address: 'Gumrah, Cachar, Assam',
    ),
  ],
  'Delhi': [
    School(
      district: 'South Delhi',
      name: 'Milli Model School',
      address: 'Abul Fazal Enclave, Okhla, New Delhi',
    ),
    School(
      district: 'North East Delhi',
      name: 'Al Falah Islami School',
      address: 'Veer Abdul Hameed Road, B-Block, North Ghonda, Delhi - 110053',
    ),
    School(
      district: 'North East Delhi',
      name: 'S.E.S. Public School',
      address:
          '55, Gali No 2, Phase 2, Bhagirathi Vihar, Mustafabad, North East Delhi',
    ),
  ],
  'Maharashtra': [
    School(
      district: 'Yavatmal',
      name: 'Shamshul uloom Urdu High School',
      address: 'Gujri Chowk, Pusad, Yavatmal, Maharashtra',
    ),
  ],
  'Gujarat': [
    School(
      district: 'Anand',
      name: 'Anjuman Falahe e daren Senior Sec School',
      address: 'Opp Juni Masjid Po Bhalej, Anand, Gujarat',
    ),
  ],
  'Manipur': [
    School(
      district: 'Tamenglong',
      name: 'Iqra School',
      address: 'Village Sibilong, Tamenglong, Manipur',
    ),
  ],
};
