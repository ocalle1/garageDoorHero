import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/bullet_list_home.dart';

class ServiceCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final List<String> bullets;
  final VoidCallback onPressed;

  const ServiceCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.bullets,
    required this.onPressed,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              // IMAGE (fixed height)
              SizedBox(
                height: 140,
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.cover),
              ),

              const SizedBox(height: 8),

              // TITLE (fixed space)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              // contains text and bullets for cards
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          description,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),

                        const SizedBox(height: 20),

                        BulletList(bullets: bullets),
                      ],
                    ),
                  ),
                ),
              ),

              // BUTTON FIXED AT BOTTOM
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text("Learn More"),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
