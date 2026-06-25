import 'package:flutter/material.dart';

// Contains input from services.dart data for CALL TO ACTION SECTION
class CallToActionSection extends StatelessWidget {
  final Map data;

  const CallToActionSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final trustBar = List<String>.from(data['trustBar'] ?? []);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data['title'] ?? '',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Text(data['description'] ?? ''),

          const SizedBox(height: 16),

          Wrap(
            spacing: 10,
            children: trustBar.map((t) => Chip(label: Text(t))).toList(),
          ),
        ],
      ),
    );
  }
}
