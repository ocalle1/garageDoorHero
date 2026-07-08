import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_tab.dart';

class ReviewTabs extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabSelected;

  const ReviewTabs({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: [
        ReviewTab(
          title: "All Reviews",
          selected: selectedTab == "All Reviews",
          onTap: () {
            onTabSelected("All Reviews");
          },
        ),

        ReviewTab(
          title: "Google",
          selected: selectedTab == "Google",
          onTap: () {
            onTabSelected("Google");
          },
        ),

        ReviewTab(
          title: "Yelp",
          selected: selectedTab == "Yelp",
          onTap: () {
            onTabSelected("Yelp");
          },
        ),
      ],
    );
  }
}
