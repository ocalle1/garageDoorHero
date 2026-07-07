import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_tab.dart';

class ReviewRating extends StatelessWidget {
  final double averageRating;
  final String selectedTab;
  final Function(String) onTabSelected;

  const ReviewRating({
    super.key,
    required this.averageRating,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Overall Rating",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),

        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber),
            const Icon(Icons.star, color: Colors.amber),
            const Icon(Icons.star, color: Colors.amber),
            const Icon(Icons.star, color: Colors.amber),
            const Icon(Icons.star_half, color: Colors.amber),
            const SizedBox(width: 10),

            Text(
              averageRating.toStringAsFixed(1),
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),

            const SizedBox(width: 20),

            Row(
              children: [
                ReviewTab(
                  title: "All Reviews",
                  selected: selectedTab == "All Reviews",
                  onTap: () {
                    onTabSelected("All Reviews");
                  },
                ),

                const SizedBox(width: 12),

                ReviewTab(
                  title: "Google",
                  selected: selectedTab == "Google",
                  onTap: () {
                    onTabSelected("Google");
                  },
                ),

                const SizedBox(width: 12),

                ReviewTab(
                  title: "Yelp",
                  selected: selectedTab == "Yelp",
                  onTap: () {
                    onTabSelected("Yelp");
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
