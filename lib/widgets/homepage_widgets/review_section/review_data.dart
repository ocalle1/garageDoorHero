import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_list.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_rating.dart';

class ReviewData extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabSelected;

  const ReviewData({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: selectedTab == 'All Reviews'
          ? FirebaseFirestore.instance
                .collection('reviews')
                .orderBy('timestamp', descending: true)
                .snapshots()
          : FirebaseFirestore.instance
                .collection('reviews')
                .where('source', isEqualTo: selectedTab)
                .orderBy('timestamp', descending: true)
                .snapshots(),

      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            "Error: ${snapshot.error}",
            style: const TextStyle(color: Colors.red),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Text("No reviews found.");
        }

        final reviews = snapshot.data!.docs;

        double averageRating =
            reviews
                .map((doc) {
                  final data = doc.data() as Map<String, dynamic>;
                  return (data["rating"] as num).toDouble();
                })
                .reduce((a, b) => a + b) /
            reviews.length;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReviewRating(
              averageRating: averageRating,
              selectedTab: selectedTab,
              onTabSelected: onTabSelected,
            ),

            const SizedBox(height: 30),

            ReviewList(reviews: reviews),
          ],
        );
      },
    );
  }
}
