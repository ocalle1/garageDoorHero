import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BulletList extends StatelessWidget {
  final List<String> bullets;

  const BulletList({super.key, required this.bullets});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: bullets.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/icons/check.svg',
                width: 18,
                height: 18,
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
