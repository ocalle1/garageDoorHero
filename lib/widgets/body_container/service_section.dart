import 'package:flutter/material.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';

//Receives input for container 1,2 from data/services.dart file (for now)
class ServiceSection extends StatelessWidget {
  final Map service;

  const ServiceSection({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              service['description'],
              style: const TextStyle(fontSize: 16),
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            flex: 2,
            child: CarouselContainer1(
              imageUrls: List<String>.from(service['images']),
            ),
          ),
        ],
      ),
    );
  }
}
