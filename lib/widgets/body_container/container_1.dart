import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_website/data/services.dart';

// Contains the CarouselSlider where the images are aut sliding
class CarouselContainer1 extends StatelessWidget {
  final List<String> imageUrls;
  const CarouselContainer1({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageUrls.map((path) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(path, fit: BoxFit.cover, width: double.infinity),
        );
      }).toList(),
      options: CarouselOptions(
        height: 200,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        autoPlay: true,
      ),
    );
    // SizedBox(
    //   height: 200,
    //   child: CarouselView(itemExtent: double.infinity
    //   , children: imageUrls.map((path) {
    //     return Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(12),
    //       child: Image.asset(
    //         path,
    //         fit: BoxFit.cover,
    //       ),
    //     ),);
    //   }).toList(),
    //   ),
    // );
  }
}
