import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/MVT/model/intervection_section.dart';

final List<InterventionArea> interventionAreas = [
  InterventionArea(
    title: 'Education',
    icon: LucideIcons.graduationCap,
    description:
        'Our education programs aim to raise village literacy to national standards, increase school enrollment, prevent dropouts, ensure equal participation for girls, and build educational awareness among villagers.',
    sections: [
      InterventionSection(
          title: "Adult Literacy Centres",
          beneficiaryCount: '4050',
          description:
              'The Adult Female Literacy Program was launched to provide functional literacy to illiterate and semi-literate women in the village. Women were identified through surveys and counseling and enrolled in a local literacy center, where a village-based teacher taught basic Hindi and mathematics.',
          subtitle: 'For 18+ women ',
          images: [
            'assets/images/mvt/mvt-img-21.png',
          ]),
      InterventionSection(
          title: 'Student Learning Centre',
          beneficiaryCount: '246',
          description:
              'The Student Learning Centre was established to support rural students in pursuing higher education and achieving their career goals, addressing the gap between improvements in elementary education and progress at advanced levels. The Centre offers a platform for students\' holistic development',
          subtitle: 'For students off Class 9th to 12th ',
          images: [
            'assets/images/mvt/mvt-img-24.png',
            'assets/images/mvt/mvt-img-23.png',
          ]),
      InterventionSection(
          title: "One Teacher School",
          description:
              'For many rural families focused on meeting basic needs, children’s education often takes a back seat. Combined with poor educational infrastructure and challenging socio-economic conditions, this leads to low educational attainment, even at the primary level. The "One Teacher School," an initiative by Model Village Trust, addresses this issue by aiming for zero dropouts at the primary level. It provides out-of-school children with foundational education to prepare them for age-appropriate classes, along with support for moral and cultural development, building a strong foundation that enables rural children to excel in higher education and beyond.',
          beneficiaryCount: '675',
          images: [
            'assets/images/mvt/mvt-img-26.png',
          ]),
      InterventionSection(
        title: 'Education Awareness Campaign',
        description:
            'To tackle early dropout rates and low school enrollment among young children, the MVT team launches an educational awareness campaign at the beginning of each academic session. This campaign highlights the serious issue of dropouts and sets future goals to boost educational awareness and enrollment rates in the village.',
        beneficiaryCount: '4450',
      ),
      InterventionSection(
          title: 'Career Counselling Sessions',
          description:
              'The Career Guidance and Counseling programs for rural students aim to empower them to make informed educational and career choices, providing training sessions that support their overall development. Over the past five years, our education initiatives have reached 34,216 beneficiaries across 53 villages through various activities, programs, and centers.',
          beneficiaryCount: '23200',
          images: [
            'assets/images/mvt/mvt-img-25.png',
          ]),
    ],
  ),
  InterventionArea(
    title: 'Health',
    icon: LucideIcons.heartPulse,
    description:
        'Model Village Trust’s health initiatives address the root causes of health challenges in the community through a collaborative, community-centered approach. Working closely with local institutions, we aim to improve rural health outcomes, focusing on maternal and child health, youth well-being through de-addiction programs, and the prevention and treatment of common diseases.',
    sections: [
      InterventionSection(
        title: "Malnutrition Free Village Program",
        description:
            'Aiming to make selected villages malnutrition-free, this program targets underweight children aged 0-6 years by identifying those below universal nourishment standards and classifying them for focused intervention. In addition to providing nutrition kits, the program emphasizes parent education to encourage positive changes in dietary and hygiene practices. It collaborates closely with the ICDS department to achieve these goals.',
        images: [
          'assets/images/mvt/mvt-img-29.png',
        ],
        beneficiaryCount: '14190',
      ),
      InterventionSection(
          title: 'Monthly Vaccination Drive',
          description:
              'In the rural village, a monthly vaccination drive is conducted with the support of ASHA and ANM workers. Our coordinator plays a key role in mobilizing villagers to ensure the complete vaccination of children and mothers with essential vaccines and booster shots. Through multiple programs and projects that facilitate the vaccination process, the initiative reaches a significant number of beneficiaries, including both children and mothers.',
          beneficiaryCount: '30960',
          images: [
            'assets/images/mvt/mvt-img-27.png',
          ]),
      InterventionSection(
          title: 'Maternal Health Program',
          description:
              'The program aims to improve the health of pregnant women and lactating mothers through preventive and promotional measures, as many direct causes of maternal deaths are preventable and treatable. Working closely with the ICDS department, the program focuses on enhancing maternal health in villages. Efforts include counseling programs, promoting institutional deliveries, ensuring vaccinations, timely check-ups, and disease prevention.',
          beneficiaryCount: '11610',
          images: [
            'assets/images/mvt/mvt-img-28.png',
          ]),
      InterventionSection(
          title: 'Menstrual Hygiene Management ',
          description:
              'Poor menstrual health and hygiene is a neglected issue, particularly affecting women in rural areas. Research indicates that nearly 23 million girls drop out of school annually due to the lack of proper menstrual hygiene management (MHM) facilities. This problem worsens in rural areas, where there is limited access to MHM infrastructure, low awareness, traditional beliefs, and a lack of safe menstrual absorbents.\nOur Menstrual Hygiene Management Program addresses these key issues and works to bring about behavioral changes in society. Key interventions include ensuring the availability of safe menstrual absorbents, providing adequate MHM infrastructure in schools and homes, and raising awareness and sensitizing all stakeholders on the importance of menstrual hygiene',
          images: [
            'assets/images/mvt/mvt-img-30.png',
            'assets/images/mvt/mvt-img-31.png',
          ],
          beneficiaryCount: '15480'),
      InterventionSection(
          title: 'Medical Camps',
          description:
              'Medical camps are crucial in rural areas as they provide access to essential healthcare for those unable to afford or travel to medical facilities. These camps help identify and treat health issues early, preventing them from escalating into more severe conditions.',
          beneficiaryCount: '10335',
          images: [
            'assets/images/mvt/mvt-img-32.png',
          ]),
    ],
  ),
  InterventionArea(
    title: 'WASH',
    icon: LucideIcons.droplets,
    description:
        'Our WASH initiatives focus on ensuring access to safe drinking water and sanitation for improved health and a cleaner environment. MVT empowers community leaders and encourages people to manage water projects sustainably, while also promoting better sanitation and personal hygiene practices.',
    sections: [
      InterventionSection(
          title: 'Cleanliness',
          description:
              'To Develop Village as better place for community development with access to quality education, healthcare, income generation and livelihood, Safe drinking water and proper sanitation.',
          images: [
            'assets/images/mvt/mvt-img-1.png',
          ]),
      InterventionSection(
          title: 'Sanitation Worker’s Equipment Support',
          description:
              'Sanitation workers provide essential services, often at the expense of their dignity, health, and safety. Our Sanitation Worker’s Equipment Support project aims to improve their working conditions and uphold their right to dignity. In many villages, sanitation workers lack adequate equipment, forcing them to manually clean, transport, and dispose of waste. Through this initiative, we provide necessary equipment such as garbage carts, gloves, masks, shoes, and spades, ensuring that sanitation workers are active participants in our Sanitation and Hygiene programs.',
          images: [
            'assets/images/mvt/mvt-img-33.png',
          ]),
      InterventionSection(
        title: 'Safe Drinking Water',
        description:
            'ndia is among the country suffering from the most serious water and sanitation crisis in the world. According to an estimated, 76 million people in India have no access to a safe water supply, and the situation is only getting more serious day by day. The Asian Development Bank has forecasted that by 2030, India will have a water deficit of 50 per cent. Model Village Trust recognizes the critical importance of the issue and focuses on the most affected areas to tackle this water crisis by providing people sources of clean water.\nWe are implementing different types of drinking water projects including handpump, R.O (Reverse Osmosis), submersible and tube well in various states of the country.\nTo ensure the long run sustainability, these projects are implemented  with active community participation since day one and ensured ownership to manage the project by community itself.',
      ),
      InterventionSection(
          title: 'Open Defecation-Free Village ',
          description:
              'In India, the majority of those without access to sanitation facilities live in rural areas, with millions continuing to defecate in the open. Model Village Trust aims to construct cost-effective and user-friendly toilets at both household and community levels, ensuring rural communities can exercise their ‘Right to Sanitation’ and create open defecation-free villages. Our efforts go beyond infrastructure development, emphasizing behavioral change to ensure 100% toilet usage. The program is implemented across all selected villages nationwide. Our ODF village interventions address both the economic and behavioral aspects of rural communities.',
          images: [
            'assets/images/mvt/mvt-img-35.png',
            'assets/images/mvt/mvt-img-34.png',
          ]),
    ],
  ),
  InterventionArea(
    title: 'Environment & Agriculture',
    icon: LucideIcons.trees,
    description:
        'Our programs in this sector focus on promoting organic farming, supporting irrigation systems, facilitating access to government schemes, and building farmer\'s capacity. We also work on creating green spaces, establishing environment-friendly institutions, and advocating for the 3R principle (Reduce, Reuse, Recycle).',
    sections: [
      InterventionSection(
          title: "Environment & Agriculture",
          description:
              'Our programs in this sector focus on promoting organic farming, supporting irrigation systems, facilitating access to government schemes, and building farmers\' capacity. We also work on creating green spaces, establishing environment-friendly institutions, and advocating for the 3R principle (Reduce, Reuse, Recycle).',
          images: [
            'assets/images/mvt/mvt-img-36.png',
          ]),
    ],
  ),
  InterventionArea(
    title: 'Livelihood',
    icon: LucideIcons.briefcase,
    description:
        'Our livelihood programs aim to create better employment opportunities, increase the involvement of marginalized communities in income-generating activities, and reduce migration by promoting self-employment ventures locally. We focus on modernizing traditional livelihood activities and offer training and workshops on new trends and best practices in the field.',
    sections: [
      InterventionSection(
          title: 'livelihood',
          description:
              'Our livelihood programs aim to create better employment opportunities, increase the involvement of marginalized communities in income-generating activities, and reduce migration by promoting self-employment ventures locally. We focus on modernizing traditional livelihood activities and offer training and workshops on new trends and best practices in the field.',
          images: [
            'assets/images/mvt/mvt-img-10.png',
          ])
    ],
  ),
  InterventionArea(
    title: 'Housing',
    icon: LucideIcons.home,
    description:
        'India faces a significant and complex challenge with homelessness, housing the largest homeless population globally. Millions of people live without proper shelter, often resorting to makeshift dwellings on streets, sidewalks, and under flyovers in some of the country’s wealthiest metropolitan areas. This alarming reality highlights the urgent need for initiatives to address this issue.\nMVT focuses primarily on supporting individuals in the least developed villages across various North Indian states, with particular emphasis on assisting victims of natural disasters. To date, MVT has successfully completed 121 low-cost housing projects in West Bengal, Jharkhand, Haryana, Odisha, Uttar Pradesh, Assam, and Bihar, benefiting numerous families.',
    sections: [
      InterventionSection(
          title: "Low-Cost Housing",
          description:
              "India faces a significant and complex challenge with homelessness, housing the largest homeless population globally. Millions of people live without proper shelter, often resorting to makeshift dwellings on streets, sidewalks, and under flyovers in some of the country’s wealthiest metropolitan areas. This alarming reality highlights the urgent need for initiatives to address this issue.\nMVT focuses primarily on supporting individuals in the least developed villages across various North Indian states, with particular emphasis on assisting victims of natural disasters. To date, MVT has successfully completed 121 low-cost housing projects in West Bengal, Jharkhand, Haryana, Odisha, Uttar Pradesh, Assam, and Bihar, benefiting numerous families.",
          images: [
            'assets/images/mvt/mvt-img-13.png',
          ])
    ],
  ),
  InterventionArea(
    title: 'Drinking Water',
    icon: LucideIcons.glassWater,
    description:
        'Unsafe water has been a long-standing source of human suffering, and in India, millions of people still wake up without access to clean, safe water. This ongoing water crisis severely impacts health, well-being, and quality of life.\nMVT’s efforts have extended across nine North Indian states—Uttar Pradesh, Bihar, Haryana, Jharkhand, West Bengal, Odisha, Madhya Pradesh, Rajasthan, and Assam—reflecting our commitment to reaching as many communities as possible and making a meaningful difference in their lives. Over the past five years, MVT has implemented 189 direct water projects, in collaboration with other NGOs, including hand pumps, submersible pumps, open wells, and RO plants, benefiting countless individuals.',
    sections: [
      InterventionSection(
          title: 'Drinking Water', images: ['assets/images/mvt/mvt-img-17.png'])
    ],
  ),
  InterventionArea(
    title: 'Govt. Schemes',
    icon: LucideIcons.landmark,
    description:
        'As a bridging agency, we connect marginalized communities with government resources, ensuring equal access to essential services and opportunities.',
    sections: [],
  ),
  InterventionArea(
    title: 'Seasonal Projects',
    icon: LucideIcons.calendar,
    description:
        'Our mission is to uplift the most backward communities, breaking the cycle of poverty and deprivation. To help with food kit, blankets, and cooked food.',
    sections: [
      InterventionSection(
          title: 'Food Kit Distribution',
          description: 'Alleviate hunger, promote health, and empower dignity.',
          images: [
            'assets/images/mvt/mvt-img-7.png',
          ]),
      InterventionSection(
        title: 'Hunger Relief',
        description:
            'The Hunger Relief Project was a seasonal program that was implemented within the community.. It aimed to aid the community during specific times of need.\nThe program aimed to support families by providing them with essential resources and services.',
      ),
      InterventionSection(
          title: 'Winter Relief',
          description:
              "Our initiative focuses on distributing warm blankets to impoverished individuals and families residing in localities below the poverty line, ensuring they brave the harsh winters with dignity.",
          images: [
            'assets/images/mvt/mvt-img-8.png',
          ])
    ],
  ),
];
