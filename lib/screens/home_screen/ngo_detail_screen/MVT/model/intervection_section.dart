import 'package:flutter/material.dart';

class InterventionSection {
  final String title;
  final String? description;
  final String? beneficiaryCount;
  final List<String>? images;
  final List<Map<String, String>>? tableData;
  final String? subtitle;

  InterventionSection({
    required this.title,
    this.description,
    this.beneficiaryCount,
    this.images,
    this.tableData,
    this.subtitle,
  });
}

// Create a model class for main interventions
class InterventionArea {
  final String title;
  final IconData icon;
  final String description;
  final List<InterventionSection> sections;

  InterventionArea({
    required this.title,
    required this.icon,
    required this.description,
    required this.sections,
  });
}