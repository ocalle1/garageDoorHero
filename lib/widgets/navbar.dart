// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/widgets/sticky_contact_header.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';
import 'package:my_website/widgets/body_container/service_section.dart';
import 'package:my_website/widgets/body_container/video_player.dart';

//CONTAINS the NAVBAR, SERVICES(BODY)gets data from services.dart, VIDEOS gets data from services.dart
class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      //The drawer when clicked will show the options available on the website
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 86, 4, 65)),
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
            backgroundColor: const Color.fromARGB(255, 234, 230, 230),
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

          //Contains the call and get quote button
          SliverPersistentHeader(pinned: true, delegate: StickyContactHeader()),

          // Container 1
          SliverToBoxAdapter(
            child: Text(hero['description']?.toString() ?? ''),
          ),

          // CONTAINER(BODY) - has all the services available
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = services[index];

              print(item['type']);

              if (item['type'] == 'service' || item['type'] == 'special') {
                // return ServicesSection(service: item);
                return ServicesSection(service: item, index: index);
              }

              if (item['type'] == 'video_section') {
                // final videos = List<String>.from(item['videos'] as List? ?? []);
                final title = (item['title'] ?? '').toString();
                final videos = (item['videos'] as List<dynamic>? ?? [])
                    .map((e) => e.toString())
                    .toList();

                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title']?.toString() ?? '',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),

                      SizedBox(
                        child: SizedBox(
                          height: 400,
                          child: VideoPlayerScreen(videos: videos),
                        ),
                      ),
                    ],
                  ),
                );
              }

              return const SizedBox.shrink();
            }, childCount: services.length),
          ),

          //VIDEOS
          // SliverToBoxAdapter(
          //   child: SizedBox(height: 400, child: VideoPlayerScreen()),
          // ),
        ],
      ),
    );
  }
}
