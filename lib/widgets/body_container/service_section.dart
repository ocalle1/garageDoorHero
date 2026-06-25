import 'package:flutter/material.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';

// Contains services and "why chooese us"
class ServicesSection extends StatelessWidget {
  final Map service;
  final int index;

  const ServicesSection({
    super.key,
    required this.service,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final type = service['type'];
    //within BODY CONTAINER(SERVICES)
    final textFirst = index.isEven;
    final images = List<String>.from(service['images'] ?? []);
    //AFTER SERVCES
    final isSpecial = type == 'special';
    final bullets = List<String>.from(service['bullets'] ?? []);

    // final callToAction =

    //BODY SERVICES - title and desription
    final textWidget = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            service['title'] ?? '',
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            service['description'] ?? '',
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
    //BODY SERVICES - Images
    final imageWidget = Expanded(child: CarouselContainer1(imageUrls: images));

    // SPECIAL LAYOUT - Bullets
    if (isSpecial) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service['title'] ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    service['description'] ?? '',
                    style: const TextStyle(fontSize: 56),
                  ),

                  const SizedBox(height: 16),

                  if (bullets.isNotEmpty)
                    Text(
                      bullets.first,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  const SizedBox(height: 8),

                  ...bullets
                      .skip(1)
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text("• $item"),
                        ),
                      ),
                ],
              ),
            ),

            const SizedBox(width: 20),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: textFirst
            ? [textWidget, const SizedBox(width: 16), imageWidget]
            : [imageWidget, const SizedBox(width: 16), textWidget],
      ),
    );

    //ADD the callToAction data from services.dart
  }
}
