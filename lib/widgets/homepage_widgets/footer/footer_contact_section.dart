// COLUMN 3

import 'package:flutter/material.dart';

class FooterContactSection extends StatelessWidget {
  const FooterContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Contact Us',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        const _ContactItem(icon: Icons.phone, text: '(951) XXX-XXXX'),

        const _ContactItem(icon: Icons.email, text: 'email@business.com'),

        const _ContactItem(
          icon: Icons.location_on,
          text: 'Southern California',
        ),

        const SizedBox(height: 20),

        const Text(
          'Business Hours',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Monday - Friday\n8:00 AM - 5:00 PM',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 15),
        ),

        const SizedBox(height: 25),

        ElevatedButton(
          onPressed: () {
            // Add navigation to contact page later
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: const Text(
            'Request Service',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.facebook, color: Colors.white),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),

      child: Row(
        mainAxisSize: MainAxisSize.min,

        children: [
          Icon(icon, color: Colors.green, size: 18),

          const SizedBox(width: 8),

          Text(text, style: const TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
