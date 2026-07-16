// COLUMN 4
import 'package:flutter/material.dart';

class FooterBadgesSection extends StatelessWidget {
  const FooterBadgesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/badges/www.garagedoorshero.com_ (2).png',
          width: 188,
          height: 188,
        ),

        const SizedBox(height: 20),

        SizedBox(
          width: 170,
          height: 48,
          child: ElevatedButton.icon(
            onPressed: () {
              // Open Loc8NearMe URL
            },
            icon: const Icon(Icons.star),
            label: const Text("More Info"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF7A00),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
