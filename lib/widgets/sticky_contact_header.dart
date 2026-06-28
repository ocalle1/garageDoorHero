import 'package:flutter/material.dart';
import 'package:my_website/widgets/buttons.dart';

// controls the 2 buttons at the top of Home page called - Call Now and Get Quote
class StickyContactHeader extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 72;

  @override
  double get maxExtent => 72;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: maxExtent,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final buttonWidth = constraints.maxWidth * 0.25;

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: buttonWidth,
                  child: HomePageButton(text: "Call Now", onPressed: () {}),
                ),

                const SizedBox(width: 16),

                SizedBox(
                  width: buttonWidth,
                  child: HomePageButton(
                    text: "Get Free Quote",
                    outlined: true,
                    onPressed: () {},
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
