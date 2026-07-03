import 'package:flutter/material.dart';
import 'package:my_website/widgets/homepage_widgets/free_quote/free_quote_form.dart';
import 'package:my_website/widgets/homepage_widgets/free_quote/service_area.dart';

class FreeQuoteSection extends StatelessWidget {
  const FreeQuoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 900;

        return Container(
          width: double.infinity,
          color: const Color(0xFF1F2937),
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: isDesktop
                  ? const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: FreeQuoteForm()),
                        SizedBox(width: 40),
                        Expanded(child: ServiceArea()),
                      ],
                    )
                  : const Column(
                      children: [
                        FreeQuoteForm(),
                        SizedBox(height: 40),
                        ServiceArea(),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
