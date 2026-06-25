import 'package:flutter/material.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';

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
    final isSpecial = type == 'special';

    final bullets = List<String>.from(service['bullets'] ?? []);
    final images = List<String>.from(service['images'] ?? []);
    final textFirst = index.isEven;

    final textWidget = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            service['title'] ?? '',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            service['description'] ?? '',
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );

    final imageWidget = Expanded(child: CarouselContainer1(imageUrls: images));

    // SPECIAL LAYOUT
    if (isSpecial) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // LEFT SIDE (text)
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

            // RIGHT SIDE (images + CTA)
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (images.isNotEmpty) CarouselContainer1(imageUrls: images),

                  const SizedBox(height: 12),

                  Text(
                    service['cta'] ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
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
    // DEFAULT LAYOUT
    // return Padding(
    //   padding: const EdgeInsets.all(16),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               service['title'] ?? '',
    //               style: const TextStyle(
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),

    //             const SizedBox(height: 8),

    //             Text(
    //               service['description'] ?? '',
    //               style: const TextStyle(fontSize: 16, height: 1.4),
    //             ),
    //           ],
    //         ),
    //       ),

    //       const SizedBox(width: 16),

    //       Expanded(child: CarouselContainer1(imageUrls: images)),
    //     ],
    //   ),
    // );
  }
}
