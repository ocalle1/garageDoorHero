import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final Map data;

  const FooterSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final brand = data['brand'];
    final contact = data['contact'];
    final links = data['links'];

    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LEFT SIDE (Brand)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (brand['image'] != null &&
                    brand['image'].toString().isNotEmpty)
                  Image.asset(brand['image'], height: 60),

                const SizedBox(height: 12),

                Text(
                  brand['name'] ?? '',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  brand['tagline'] ?? '',
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          const SizedBox(width: 40),

          // MIDDLE (Links)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  links['title'] ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                ...List<String>.from(links['items'] ?? []).map(
                  (item) =>
                      Text(item, style: const TextStyle(color: Colors.white70)),
                ),
              ],
            ),
          ),

          const SizedBox(width: 40),

          // RIGHT SIDE (Contact)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  contact['phone'] ?? '',
                  style: const TextStyle(color: Colors.white70),
                ),

                Text(
                  contact['email'] ?? '',
                  style: const TextStyle(color: Colors.white70),
                ),

                Text(
                  contact['availability'] ?? '',
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
