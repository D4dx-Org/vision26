import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:vision_2026/helper/intervention_area_card.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/advocacy_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/financial_inclusion.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/handholding.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/ifccs_formation.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/technology_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/detail_screens/thirft_service_screen.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class SahulatDetailPage extends StatelessWidget {
  const SahulatDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        title: const Text(
          'Sahulat Microfinance Society',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Organization Header
            Container(
              color: const Color(0xFFB71C1C),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 40),
              child: Column(
                children: [
                  // Logo
                  Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        SahulatContent.sahulat18,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Mission Statement
            Transform.translate(
              offset: const Offset(0, -20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Text(
                    SahulatContent.sahulatDescription,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // Core Intervention Areas Header
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Core Activities",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Intervention Areas Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.3,
                children: const [
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'IFCCS Formation',
                    icon: LucideIcons.orbit,
                    child: IFCCSFormationScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Thrift/Deposit Services',
                    icon: LucideIcons.wallet,
                    child: ThriftServicesScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Financial Inclusion',
                    icon: LucideIcons.walletCards,
                    child: FinancialInclusionScreen(),
                  ),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Technology',
                    icon: LucideIcons.laptop,
                    child: TechnologyScreen(),
                  ),
                  InterventionAreaCard(
                      accentColor: const Color(0xFFB71C1C),
                      title: 'Advocacy',
                      icon: LucideIcons.megaphone,
                      child: AdvocacyScreen()),
                  InterventionAreaCard(
                    accentColor: const Color(0xFFB71C1C),
                    title: 'Handholding',
                    icon: LucideIcons.userPlus,
                    child: HandholdingSupportScreen(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

