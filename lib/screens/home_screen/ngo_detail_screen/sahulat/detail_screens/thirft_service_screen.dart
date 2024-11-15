import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:vision_2026/screens/home_screen/ngo_detail_screen/sahulat/sahulat_content.dart';

class ThriftServicesScreen extends StatelessWidget {
  const ThriftServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Thrift/Deposit Services',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StatsSection(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Gallery',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[700],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const ImagesGridView(),
          ],
        ),
      ),
    );
  }
}

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
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
          const StatItem(
            title: '117 branches of 61',
            subtitle: 'states utilised various type of thrift products',
            isHighlighted: true,
          ),
          _buildDivider(),
          const StatItem(
            title: '190,000 members',
            subtitle: 'have thrift accounts frequency one year to three year',
          ),
          _buildDivider(),
          const StatItem(
            title: 'Savings/Deposit Services',
            items: [
              'Emergency Fund',
              'Housing Deposits',
              'Festival Deposits',
            ],
          ),
          _buildDivider(),
          const StatItem(
            title: '₹49,770 crore',
            subtitle: 'Under these schemes the funds collected',
          ),
          _buildDivider(),
          const StatItem(
            title: '21 states',
            subtitle: 'Currently cooperatives are working in India',
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Divider(color: Colors.grey[200], height: 1),
    );
  }
}

class StatItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<String>? items;
  final bool isHighlighted;

  const StatItem({
    super.key,
    required this.title,
    this.subtitle,
    this.items,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isHighlighted ? 20 : 18,
            fontWeight: FontWeight.bold,
            color: Colors.red[700],
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            subtitle!,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),
        ],
        if (items != null) ...[
          const SizedBox(height: 8),
          ...items!.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Icon(LucideIcons.check, size: 18, color: Colors.red[700]),
                    const SizedBox(width: 8),
                    Text(
                      item,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )),
        ],
      ],
    );
  }
}

class ImagesGridView extends StatelessWidget {
  const ImagesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: 5, // Number of images
        itemBuilder: (context, index) {
          List images = [
            SahulatContent.sahulat24,
            SahulatContent.sahulat25,
            SahulatContent.sahulat26,
            SahulatContent.sahulat27,
            SahulatContent.sahulat28,
          ];
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
                images[index], // Add your images
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
