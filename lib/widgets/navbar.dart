// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/widgets/sticky_contact_header.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';
import 'package:my_website/widgets/body_container/service_section.dart';
import 'package:my_website/widgets/body_container/video_player.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The drawer when clicked will show the options available on the website
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text('About us'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.connect_without_contact_sharp),
              title: const Text('Contact us'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.location_on_rounded),
              title: const Text('Location'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.article_rounded),
              title: const Text('Blog'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 150,
            centerTitle: true,
            floating: true,
            pinned: false,
            expandedHeight: 150,
            backgroundColor: const Color.fromARGB(255, 242, 241, 241),
            title: Image.asset('assets/images/logo.webp', height: 300),
            //Contains Button for contact, license, and email
            actions: [
              IconButton(
                icon: const Icon(Icons.phone, color: Colors.black, size: 30.0),
                onPressed: () {
                  print('Phone icon pressed');
                  // 951-498-7958;
                },
              ),
              IconButton(
                icon: const Icon(Icons.email, color: Colors.black, size: 30.0),
                onPressed: () {
                  print('garagedoorshero@gmail.com');
                  // email address
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.card_membership,
                  color: Colors.black,
                  size: 30.0,
                ),
                onPressed: () {
                  print('#1066860');
                  // email address
                },
              ),
            ],
          ),
          SliverPersistentHeader(pinned: true, delegate: StickyContactHeader()),

          // Container 1 -Right now this controls the image, description from the container_1(First section)
          SliverToBoxAdapter(child: ServiceSection(service: services[0])),

          // Container 2 - image could either be static or carousel (undecided)
          SliverToBoxAdapter(child: ServiceSection(service: services[1])),
          SliverToBoxAdapter(
            child: SizedBox(height: 400, child: VideoPlayerScreen()),
          ),
          // Container 3 - videos
        ],
      ),
    );
  }
}
