import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_website/widgets/homepage_widgets/review_section/review_card.dart';

// retreives data from firebase and displays on website
class ReviewList extends StatefulWidget {
  final List<QueryDocumentSnapshot> reviews;

  const ReviewList({super.key, required this.reviews});

  @override
  State<ReviewList> createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final ScrollController scrollController = ScrollController();

    return Stack(
      alignment: Alignment.center,
      children: [
        SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final doc in widget.reviews)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ReviewCard(
                    name: (doc.data() as Map<String, dynamic>)['name'] ?? '',

                    message:
                        (doc.data() as Map<String, dynamic>)['message'] ?? '',

                    rating:
                        ((doc.data() as Map<String, dynamic>)['rating'] as num?)
                            ?.toDouble() ??
                        0.0,

                    source:
                        (doc.data() as Map<String, dynamic>)['source'] ?? '',
                  ),
                ),
            ],
          ),
        ),

        Positioned(
          left: 0,
          child: Material(
            elevation: 4,
            shape: const CircleBorder(),
            color: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                if (!_scrollController.hasClients) return;

                _scrollController.animateTo(
                  (_scrollController.offset - 320).clamp(
                    0.0,
                    _scrollController.position.maxScrollExtent,
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ),

        Positioned(
          right: 0,
          child: Material(
            elevation: 4,
            shape: const CircleBorder(),
            color: Colors.white,
            child: IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: () {
                if (!_scrollController.hasClients) return;

                _scrollController.animateTo(
                  (_scrollController.offset + 320).clamp(
                    0.0,
                    _scrollController.position.maxScrollExtent,
                  ),
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
