import 'package:flutter/material.dart';

class HeroIntroTitle extends StatelessWidget {
  final String text;

  const HeroIntroTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 600;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 900),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF1557D1),
            fontSize: isSmall ? 48 : 60,
            fontWeight: FontWeight.w700,
            height: 1.15,
          ),
        ),
      ),
    );
  }
}

class HeroIntroText extends StatelessWidget {
  final String text;

  const HeroIntroText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 900),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromRGBO(75, 85, 99, .9),
            fontSize: 23,
            height: 2,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class HeroIntroChecks extends StatelessWidget {
  final String text;

  const HeroIntroChecks({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 900),
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF6B7280),
            fontSize: 16,
            height: 1.6,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
