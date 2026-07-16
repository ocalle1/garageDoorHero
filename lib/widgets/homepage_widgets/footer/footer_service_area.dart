// COLUMN 2

import 'package:flutter/material.dart';

class FooterServiceArea extends StatelessWidget {
  const FooterServiceArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Service Areas:',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        Image.asset(
          'assets/images/map/customCaliforniaMap.png',
          width: 260,
          fit: BoxFit.contain,
        ),

        // const SizedBox(height: 10),
        Wrap(
          spacing: 20,
          runSpacing: 5,
          children: const [
            _City(city: 'Murrieta'),
            _City(city: 'Temecula'),
            _City(city: 'Menifee'),
            _City(city: 'Lake Elsinore'),
            _City(city: 'Wildomar'),
            _City(city: 'Perris'),
            _City(city: 'Winchester'),
            _City(city: 'Hemet'),
          ],
        ),
        const SizedBox(height: 20),

        const Text(
          "Serving Southern California",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}

class _City extends StatelessWidget {
  final String city;

  const _City({required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 18),

          const SizedBox(width: 8),

          Text(city, style: const TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
