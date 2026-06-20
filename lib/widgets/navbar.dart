import 'package:flutter/material.dart';


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
              decoration: BoxDecoration(color:Colors.blue),
               child: Text('Home', style:TextStyle(color: Colors.white, fontSize: 24)),
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
            // floating: true,
            pinned: true,
            expandedHeight:150,
backgroundColor: const Color.fromARGB(255, 242, 241, 241),
              title: Image.asset('assets/images/logo.webp', height: 300,),
             
            
             
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.phone,
                  color: Colors.black,
                  size: 30.0,  
                    ),
                  onPressed: () {
                    print('Phone icon pressed');
                    // 951-498-7958;
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 30.0,
                  ),
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
            flexibleSpace: FlexibleSpaceBar(
              //Can change the background to an image, video, or even a widget
       
              ),
            ), 
           
            // ),
          SliverList(
delegate: SliverChildBuilderDelegate((context, index) => ListTile(
  title: Text('Item #$index'),
),
childCount: 30,
),
          ),
        ],
      ),
    );
  }
  }

  // }

//   @override
//   Widget build(BuildContext context) => Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text(
//               'Garage Door Hero',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),

//           ListTile(
//             leading: const Icon(Icons.home),
//             title: const Text('Home'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.build),
//             title: const Text('Services'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.info),
//             title: const Text('About Us'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.contact_mail),
//             title: const Text('Contact Us'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.location_on),
//             title: const Text('Location'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),

//           ListTile(
//             leading: const Icon(Icons.article),
//             title: const Text('Blog'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ],
//       ),
//     );
// }