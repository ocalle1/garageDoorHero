// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_website/widgets/footer/footer.dart';
import 'package:my_website/widgets/sticky_contact_header.dart';
import 'package:my_website/data/services.dart';
import 'package:my_website/widgets/body_container/carousel_slider.dart';
import 'package:my_website/widgets/body_container/service_section.dart';
import 'package:my_website/widgets/body_container/video_player.dart';
import 'package:my_website/widgets/body_container/call_to_action_section.dart';

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

          //Contains the call and get quote button
          // SliverPersistentHeader(pinned: true, delegate: StickyContactHeader()),

          // Container 1 - under header - title, description-"Fast,reliable garage door...", 3 check marks and button
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Center(
          //           child: ConstrainedBox(
          //             constraints: const BoxConstraints(maxWidth: 900),

          //             child: Padding(
          //               padding: const EdgeInsets.only(bottom: 24),
          //               child: Text(
          //                 hero['title']?.toString() ?? '',
          //                 textAlign: TextAlign.center,
          //                 style: const TextStyle(
          //                   color: Color.fromRGBO(21, 87, 209, 1.0),

          //                   fontSize: 60,
          //                   fontWeight: FontWeight.w900,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),

          //         const SizedBox(height: 8),

          //         Center(
          //           child: ConstrainedBox(
          //             constraints: const BoxConstraints(maxWidth: 900),
          //             child: Column(
          //               children: [
          //                 Text(
          //                   hero['descriptionMain']?.toString() ?? '',
          //                   textAlign: TextAlign.center,
          //                   style: const TextStyle(
          //                     color: Color.fromRGBO(75, 85, 99, 0.9),
          //                     fontSize: 23,
          //                     height: 2.0,
          //                     fontWeight: FontWeight.w900,
          //                   ),
          //                 ),

          //                 const SizedBox(height: 12),
          //                 SliverPersistentHeader(
          //                   pinned: true,
          //                   delegate: StickyContactHeader(),
          //                 ),

          //                 Text(
          //                   hero['descriptionHighlights']?.toString() ?? '',
          //                   textAlign: TextAlign.center,
          //                   style: const TextStyle(
          //                     color: Color.fromRGBO(105, 114, 128, 0.9),

          //                     fontSize: 18,
          //                     fontWeight: FontWeight.w400,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 900),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Text(
                          heroIntroduction['title']?.toString() ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromRGBO(21, 87, 209, 1),
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 900),
                      child: Text(
                        heroIntroduction['descriptionMain']?.toString() ?? '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromRGBO(75, 85, 99, .9),
                          fontSize: 23,
                          height: 2,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //// 2 button - call and get quote
          SliverPersistentHeader(pinned: true, delegate: StickyContactHeader()),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 900),
                  child: Column(
                    children: [
                      const SizedBox(height: 12),

                      Text(
                        heroIntroduction['descriptionHighlights']?.toString() ??
                            '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromRGBO(105, 114, 128, .9),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // CONTAINER(BODY) - has all the services available
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final item = services[index];

              // "Our Services" Text only(Banner)
              if (item['type'] == 'section_header') {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    item['title']?.toString() ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(17, 24, 39, 1.0),
                      fontSize: 39,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                );
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
          SliverToBoxAdapter(child: CallToActionSection(data: callToAction)),
          SliverToBoxAdapter(child: FooterSection(data: footerSection)),
        ],
      ),
    );
  }
}
