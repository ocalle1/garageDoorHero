import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      // Widgets will be container inside this column; Text, Rating, Tabs, and Cards
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

          // Overall Rating Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Overall Rating",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_half, color: Colors.amber),

                  SizedBox(width: 10),
                  Text(
                    "4.8",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                  ),

                  SizedBox(width: 10, height: 40),
                  //TABS FOR ALL REVIEWS, GOOGLE, AND YELP
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = 'All Reviews';
                          });
                        },
                        child: Text(
                          "All Reviews",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: selectedTab == 'All Reviews'
                                ? Colors.orange
                                : Colors.black,
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = "Google";
                          });
                        },
                        child: Text(
                          "Google",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedTab == "Google"
                                ? Colors.orange
                                : Colors.black,
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = "Yelp";
                          });
                        },
                        child: Text(
                          "Yelp",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedTab == "Yelp"
                                ? Colors.orange
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),

          StreamBuilder<QuerySnapshot>(
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
                  'Error: ${snapshot.error}',
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

              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final doc in reviews)
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ReviewCard(
                          name:
                              (doc.data() as Map<String, dynamic>)['name'] ??
                              '',
                          message:
                              (doc.data() as Map<String, dynamic>)['message'] ??
                              '',
                          rating:
                              (doc.data() as Map<String, dynamic>)['rating']
                                  as double ??
                              0.0,
                          source:
                              (doc.data() as Map<String, dynamic>)['source'] ??
                              '',
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
