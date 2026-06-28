import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderSide? borderSide;
  final bool outlined;

  const HomePageButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.borderSide,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: outlined ? Colors.white : const Color(0xFF1557D1),

        foregroundColor: outlined ? const Color(0xFF1557D1) : Colors.white,

        side: outlined
            ? const BorderSide(color: Color(0xFF1557D1), width: 2)
            : null,

        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),

        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

        elevation: 0,
      ),
      child: Text(text),
    );
  }
}
