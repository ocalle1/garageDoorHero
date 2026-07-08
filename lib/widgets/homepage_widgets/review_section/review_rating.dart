import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_tab.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_tabs.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overall Rating",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
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
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  //review_tabs.dart
                  ReviewTabs(
                    selectedTab: selectedTab,
                    onTabSelected: onTabSelected,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                child: const Text("Write a Review"),
              ),
            ],
          );
        }

        // Desktop layout
        return Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // your rating Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Overall Rating",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),

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
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 40),

            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
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

            // your button
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Write a Review"),
            ),
          ],
        );
      },
    );

    // ),
    // );
  }
}
