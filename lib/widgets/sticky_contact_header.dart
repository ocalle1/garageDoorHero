import 'package:flutter/material.dart';

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
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Call Now'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Get Quote'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  bool shouldRebuild(
    covariant SliverPersistentHeaderDelegate oldDelegate,
  ) {
    return false;
  }
}