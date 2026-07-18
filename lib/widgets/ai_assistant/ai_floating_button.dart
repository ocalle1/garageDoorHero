import 'package:flutter/material.dart';

class AIFloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AIFloatingButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      backgroundColor: const Color(0xFF1565C0),
      foregroundColor: Colors.white,
      elevation: 8,
      icon: const Icon(Icons.smart_toy),
      label: const Text(
        "Hero Assistant",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}