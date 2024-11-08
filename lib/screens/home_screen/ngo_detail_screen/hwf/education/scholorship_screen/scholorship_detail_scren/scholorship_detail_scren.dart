import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

enum ScholarshipType {
  undergraduate,
  postgraduate,
  memorial,
}

class ScholarshipDetailScreen extends StatelessWidget {
  final ScholarshipType type;

  const ScholarshipDetailScreen({
    super.key,
    this.type = ScholarshipType.undergraduate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Header with Gradient
          _buildHeader(context),

          // Quick Stats
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  _buildStatCard(
                    icon: LucideIcons.users,
                    value: '500+',
                    label: 'Recipients',
                  ),
                  const SizedBox(width: 16),
                  _buildStatCard(
                    icon: LucideIcons.indianRupee,
                    value: '₹50k',
                    label: 'Max Amount',
                  ),
                  const SizedBox(width: 16),
                  _buildStatCard(
                    icon: LucideIcons.calendar,
                    value: '1 Year',
                    label: 'Duration',
                  ),
                ],
              ),
            ),
          ),

          // Description
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _getDescription(),
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Eligibility Criteria
          SliverToBoxAdapter(
            child: _buildEligibilitySection(),
          ),

          // Required Documents
          SliverToBoxAdapter(
            child: _buildDocumentsSection(),
          ),

          // Related Scholarships
          SliverToBoxAdapter(
            child: _buildRelatedScholarshipsSection(context),
          ),
        ],
      ),
    );
  }

  // Helper methods for building sections
  Widget _buildHeader(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: _getGradientColors(),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: -50,
                bottom: -50,
                child: Icon(
                  _getHeaderIcon(),
                  size: 200,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getTitle(),
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: _getGradientColors().first,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(LucideIcons.share2),
          onPressed: () {
            // Share functionality
          },
        ),
        const SizedBox(width: 8),
      ],
    );
  }
  // Continue from previous part...

  Widget _buildStatCard({
    required IconData icon,
    required String value,
    required String label,
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
              color: _getGradientColors().first,
              size: 24,
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: _getGradientColors().first,
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

  Widget _buildEligibilitySection() {
    return Container(
      margin: const EdgeInsets.all(20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Eligibility Criteria',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(
            4,
            (index) => _buildEligibilityItem(_getEligibilityCriteria()[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                LucideIcons.fileText,
                color: Color(0xFFB71C1C),
              ),
              SizedBox(width: 12),
              Text(
                'Required Documents',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...List.generate(
            5,
            (index) => _buildDocumentItem(_getRequiredDocuments()[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedScholarshipsSection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Related Scholarships',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          ...ScholarshipType.values
              .where((t) => t != type)
              .map((t) => _buildRelatedScholarshipCard(t, context))
              .toList()
        ],
      ),
    );
  }

  Widget _buildEligibilityItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            LucideIcons.checkCircle2,
            color: _getGradientColors().first,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            LucideIcons.fileCheck,
            color: Colors.grey[600],
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRelatedScholarshipCard(
      ScholarshipType scholarshipType, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScholarshipDetailScreen(
                  type: scholarshipType,
                ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _getScholarshipTypeColor(scholarshipType)
                        .withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _getScholarshipTypeIcon(scholarshipType),
                    color: _getScholarshipTypeColor(scholarshipType),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getScholarshipTypeTitle(scholarshipType),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper methods for getting data
  List<Color> _getGradientColors() {
    switch (type) {
      case ScholarshipType.undergraduate:
        return [const Color(0xFF1565C0), const Color(0xFF1976D2)];
      case ScholarshipType.postgraduate:
        return [const Color(0xFF00796B), const Color(0xFF009688)];
      case ScholarshipType.memorial:
        return [const Color(0xFFC62828), const Color(0xFFD32F2F)];
    }
  }

  IconData _getHeaderIcon() {
    switch (type) {
      case ScholarshipType.undergraduate:
        return LucideIcons.graduationCap;
      case ScholarshipType.postgraduate:
        return LucideIcons.award;
      case ScholarshipType.memorial:
        return LucideIcons.trophy;
    }
  }

  String _getTitle() {
    switch (type) {
      case ScholarshipType.undergraduate:
        return 'UG Scholarship';
      case ScholarshipType.postgraduate:
        return 'PG Scholarship';
      case ScholarshipType.memorial:
        return 'Prof. K.A Siddique Hassan Scholarship';
    }
  }

  String _getDescription() {
    switch (type) {
      case ScholarshipType.undergraduate:
        return 'This program encourages higher education among youth by offering scholarships to deserving candidates pursuing undergraduate studies. In line with the Foundation\'s commitment to grassroots social betterment, these scholarships focus on disciplines within the Social Sciences and Humanities.';
      case ScholarshipType.postgraduate:
        return 'The program aims to enhance access to higher education for youth by providing scholarships to deserving candidates pursuing postgraduate studies. Given the Foundation\'s commitment to social upliftment at the grassroots level, the scholarships focus on disciplines within the Social Sciences and Humanities.';
      case ScholarshipType.memorial:
        return 'The Prof. K.A Siddique Hassan Memorial PG Scholarship honors the visionary behind the Vision 2026 project and a pioneer in human empowerment. This annual scholarship program is designed to support exceptionally talented students from underprivileged communities, providing them with the opportunity to pursue higher education in top institutions across the country. A total of 100 postgraduate students will be selected for this scholarship each year, with each recipient receiving Rs 8,000 monthly till end of their course.';
    }
  }

  List<String> _getEligibilityCriteria() {
    return [
      'Must be enrolled in an accredited institution',
      'Minimum 60% marks in previous academic year',
      'Family income below specified threshold',
      'Strong academic record and extracurricular activities',
    ];
  }

  List<String> _getRequiredDocuments() {
    return [
      'Academic transcripts and certificates',
      'Income certificate',
      'Identity proof and address proof',
      'Recommendation letters',
      'Statement of purpose',
    ];
  }

  Color _getScholarshipTypeColor(ScholarshipType scholarshipType) {
    switch (scholarshipType) {
      case ScholarshipType.undergraduate:
        return const Color(0xFF1565C0);
      case ScholarshipType.postgraduate:
        return const Color(0xFF00796B);
      case ScholarshipType.memorial:
        return const Color(0xFFC62828);
    }
  }

  IconData _getScholarshipTypeIcon(ScholarshipType scholarshipType) {
    switch (scholarshipType) {
      case ScholarshipType.undergraduate:
        return LucideIcons.graduationCap;
      case ScholarshipType.postgraduate:
        return LucideIcons.award;
      case ScholarshipType.memorial:
        return LucideIcons.trophy;
    }
  }

  String _getScholarshipTypeTitle(ScholarshipType scholarshipType) {
    switch (scholarshipType) {
      case ScholarshipType.undergraduate:
        return 'UG Scholarship';
      case ScholarshipType.postgraduate:
        return 'PG Scholarship';
      case ScholarshipType.memorial:
        return 'Prof. K.A Siddique Hassan Scholarship';
    }
  }
}

// You'll also need this helper class for managing the scholarship application
class ScholarshipApplication {
  final String id;
  final ScholarshipType type;
  final String applicantName;
  final String institution;
  final String course;
  final double previousMarks;
  final Map<String, String> documents;

  ScholarshipApplication({
    required this.id,
    required this.type,
    required this.applicantName,
    required this.institution,
    required this.course,
    required this.previousMarks,
    required this.documents,
  });

  // Convert application to JSON for API submission
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.toString(),
      'applicant_name': applicantName,
      'institution': institution,
      'course': course,
      'previous_marks': previousMarks,
      'documents': documents,
    };
  }

  // Create application from JSON response
  factory ScholarshipApplication.fromJson(Map<String, dynamic> json) {
    return ScholarshipApplication(
      id: json['id'],
      type: ScholarshipType.values.firstWhere(
        (e) => e.toString() == json['type'],
      ),
      applicantName: json['applicant_name'],
      institution: json['institution'],
      course: json['course'],
      previousMarks: json['previous_marks'].toDouble(),
      documents: Map<String, String>.from(json['documents']),
    );
  }
}

// Helper class for managing scholarship status
class ScholarshipStatus {
  final String applicationId;
  final String status;
  final DateTime lastUpdated;
  final String? remarks;

  ScholarshipStatus({
    required this.applicationId,
    required this.status,
    required this.lastUpdated,
    this.remarks,
  });

  factory ScholarshipStatus.fromJson(Map<String, dynamic> json) {
    return ScholarshipStatus(
      applicationId: json['application_id'],
      status: json['status'],
      lastUpdated: DateTime.parse(json['last_updated']),
      remarks: json['remarks'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'application_id': applicationId,
      'status': status,
      'last_updated': lastUpdated.toIso8601String(),
      'remarks': remarks,
    };
  }
}

// Extension to add helpful methods to ScholarshipType
extension ScholarshipTypeExtension on ScholarshipType {
  String get displayName {
    switch (this) {
      case ScholarshipType.undergraduate:
        return 'Undergraduate Scholarship';
      case ScholarshipType.postgraduate:
        return 'Postgraduate Scholarship';
      case ScholarshipType.memorial:
        return 'Prof. K.A Siddique Hassan Memorial Scholarship';
    }
  }

  String get shortName {
    switch (this) {
      case ScholarshipType.undergraduate:
        return 'UG';
      case ScholarshipType.postgraduate:
        return 'PG';
      case ScholarshipType.memorial:
        return 'Memorial';
    }
  }

  double get maxAmount {
    switch (this) {
      case ScholarshipType.undergraduate:
        return 50000;
      case ScholarshipType.postgraduate:
        return 75000;
      case ScholarshipType.memorial:
        return 96000;
    }
  }

  int get durationInMonths {
    switch (this) {
      case ScholarshipType.undergraduate:
        return 12;
      case ScholarshipType.postgraduate:
        return 24;
      case ScholarshipType.memorial:
        return 24;
    }
  }
}

// Constants for scholarship-related values
class ScholarshipConstants {
  static const double minimumPercentage = 60.0;
  static const double maximumFamilyIncome = 300000.0;
  static const int applicationDeadlineDays = 30;
  static const List<String> requiredDocumentTypes = [
    'academic_certificates',
    'income_certificate',
    'identity_proof',
    'address_proof',
    'recommendation_letters',
    'statement_of_purpose',
  ];

  static const Map<String, String> documentLabels = {
    'academic_certificates': 'Academic Certificates',
    'income_certificate': 'Income Certificate',
    'identity_proof': 'Identity Proof',
    'address_proof': 'Address Proof',
    'recommendation_letters': 'Recommendation Letters',
    'statement_of_purpose': 'Statement of Purpose',
  };
}
