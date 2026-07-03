import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String name;
  final String message;
  final double rating;
  final String source;

  const ReviewCard({
    super.key,
    required this.name,
    required this.message,
    required this.rating,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name + source badge
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: source == "Google"
                      ? Colors.blue.shade50
                      : Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  source,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: source == "Google" ? Colors.blue : Colors.orange,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Stars
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < rating.round() ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 18,
              );
            }),
          ),

          const SizedBox(height: 12),

          // Message
          Text(
            message,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
