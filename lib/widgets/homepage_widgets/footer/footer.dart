// MAIN FOOTER/ PARENT

import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/footer/footer_logo_section.dart';
import 'package:my_website/widgets/homepage_widgets/footer/footer_service_area.dart';
import 'package:my_website/widgets/homepage_widgets/footer/footer_contact_section.dart';
import 'package:my_website/widgets/homepage_widgets/footer/footer_badges_section.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 900) {
            // Mobile
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FooterLogoSection(),
                SizedBox(height: 40),

                FooterServiceArea(),
                SizedBox(height: 40),

                FooterContactSection(),
                SizedBox(height: 40),

                FooterBadgesSection(),
                SizedBox(height: 40),
              ],
            );
          }

          // Desktop
          return const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: FooterLogoSection()),

              SizedBox(width: 40),

              Expanded(child: FooterServiceArea()),

              SizedBox(width: 40),

              Expanded(child: FooterContactSection()),

              SizedBox(width: 40),

              Expanded(child: FooterBadgesSection()),
            ],
          );
        },
      ),
    );
  }
}
