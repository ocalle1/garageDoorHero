// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/widgets/footer.dart';
import 'package:my_website/widgets/homepage_widgets/services_title.dart';
import 'package:my_website/widgets/sticky_contact_header.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/carousel_slider.dart';
import 'package:my_website/body_container/service_section.dart';
import 'package:my_website/widgets/video_player.dart';
import 'package:my_website/body_container/call_to_action_section.dart';
import 'package:my_website/widgets/homepage_widgets/heroIntro.dart';

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
            backgroundColor: const Color.fromRGBO(220, 223, 229, 1.0),
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
          // heroIntrodution CONTAINER
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Center(
                    child: HeroIntroTitle(
                      text: heroIntroduction['title']?.toString() ?? '',
                    ),
                  ),

                  const SizedBox(height: 8),

                  Center(
                    // Fast, reliable garage door... - text under Professiona title
                    child: HeroIntroText(
                      text:
                          heroIntroduction['descriptionMain']?.toString() ?? '',
                    ),
                  ),
                ],
              ),
            ),
          ),

          //// 2 button - call and get quote
          SliverPersistentHeader(pinned: true, delegate: StickyContactHeader()),

          // 3 check marks
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: HeroIntroChecks(
                  text:
                      heroIntroduction['descriptionHighlights']?.toString() ??
                      '',
                ),
              ),
            ),
          ),

          // CONTAINER(BODY) - has all the services available
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = services[index];

              // "Our Services" Text only(Banner)
              switch (item['type']) {
                case 'section_header':
                  return ServicesTitle(text: item['title']?.toString() ?? '');
              }

              //Dispays Services available
              if (item['type'] == 'service' || item['type'] == 'special') {
                return ServicesSection(service: item, index: index);
              }
              // displays the 2 videos on home page
              if (item['type'] == 'video_section') {
                // final videos = List<String>.from(item['videos'] as List? ?? []);
                final title = (item['title'] ?? '').toString();
                final videos = (item['videos'] as List<dynamic>? ?? [])
                    .map((e) => e.toString())
                    .toList();

                return Padding(
                  padding: const EdgeInsets.all(46),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //VIDEO CSS
                      Text(
                        item['title']?.toString() ?? '',
                        style: const TextStyle(
                          fontSize: 74,
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
          SliverToBoxAdapter(child: CallToActionSection(data: callToAction)),
          SliverToBoxAdapter(child: FooterSection(data: footerSection)),
        ],
      ),
    );
  }
}
