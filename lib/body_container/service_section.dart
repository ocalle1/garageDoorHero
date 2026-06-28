import 'package:flutter/material.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_website/widgets/bullet_list_home.dart';

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
            style: TextStyle(
              fontSize: 30,
              height: 1.2,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            service['description'] ?? '',
            style: const TextStyle(
              fontSize: 18,
              height: 1.625,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16),

          if (bullets.isNotEmpty)
            ...bullets.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/images/icons/check.svg',
                      width: 18,
                      height: 18,
                    ),

                    const SizedBox(width: 8),

                    Expanded(child: Text(item)),
                  ],
                ),
              ),
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
                      fontSize: 30,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    service['description'] ?? '',
                    style: const TextStyle(fontSize: 18),
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

                  BulletList(bullets: bullets.skip(1).toList()),
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
