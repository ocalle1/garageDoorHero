// COLUMN 1

import 'package:flutter/material.dart';

class FooterLogoSection extends StatelessWidget {
  const FooterLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // COMPANY LOGO
        Image.asset('assets/images/logo.webp', width: 200),

        const SizedBox(height: 20),

        const Text(
          'Lic. #1066860',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),

        const SizedBox(height: 15),

        TextButton(
          onPressed: () {
            // Open Google Maps later
          },
          style: TextButton.styleFrom(padding: EdgeInsets.zero),

          child: const Text(
            'Garage Doors Hero and Gate',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
