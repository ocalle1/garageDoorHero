import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_data.dart';

class ReviewsSection extends StatefulWidget {
  const ReviewsSection({super.key});

  @override
  State<ReviewsSection> createState() => _ReviewsSectionState();
}

class _ReviewsSectionState extends State<ReviewsSection> {
  String selectedTab = 'All Reviews';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            "What Our Customers Say",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),

          const SizedBox(height: 30),

          ReviewData(
            selectedTab: selectedTab,
            onTabSelected: (tab) {
              setState(() {
                selectedTab = tab;
              });
            },
          ),
        ],
      ),
    );
  }
}
