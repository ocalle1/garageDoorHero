import 'package:flutter/material.dart';

class ServiceArea extends StatelessWidget {
  const ServiceArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text(
            "Service Areas",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/images/map/service_area_map.webp",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
