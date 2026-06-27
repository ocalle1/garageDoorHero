import 'package:flutter/material.dart';
import 'package:my_website/widgets/button_widget/buttons.dart';

// controls the 2 buttons at the top of page called - Call Now and Get Quote
class StickyContactHeader extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 80;

  @override
  double get maxExtent => 80;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: maxExtent,
      child: Container(
        color: const Color.fromARGB(255, 172, 61, 61),
        child: Row(
          children: [
            HomePageButton(text: "Call Now", onPressed: () {}),
            HomePageButton(text: "Get Quote", onPressed: () {}),

            // Expanded(
            //   child: ElevatedButton(
            //     onPressed: () {},

            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color(0xFF1557D1), // your --primary
            //       foregroundColor: Colors.white, // text color

            //       padding: const EdgeInsets.symmetric(
            //         vertical: 16,
            //         horizontal: 32,
            //       ),

            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8), // ~0.5rem
            //       ),

            //       textStyle: const TextStyle(
            //         fontSize: 18, // 1.125rem
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),

            //     child: const Text('Call Now'),
            //   ),
            // ),
            // Expanded(
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       side: const BorderSide(color: Colors.blue, width: 2.0),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadiusGeometry.circular(2.0),
            //       ),
            //       padding: const EdgeInsets.symmetric(
            //         vertical: 16,
            //         horizontal: 32,
            //       ),
            //     ),
            //     child: const Text(
            //       'Get Quote',
            //       style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
