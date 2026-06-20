import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
              title: const Text('Garage Doors Hero anddsassa gate'),
            //You want the Home,servies, and others here and then when I scroll down they will go to the side of the logo and then when I scroll down more they will disappear
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
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
            floating: true, //Hides the expanded height as I scroll down
            pinned: true,
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              //Can change the background to an image, video, or even a widget
              background: Image.network(
                'https://media.istockphoto.com/id/172474435/photo/small-family-poses-in-front-of-new-home.jpg?s=2048x2048&w=is&k=20&c=BZ1c34VyDhur_obsHggmbm7SHg3-DzZIyuqRaGJl_2M=',
                fit: BoxFit.contain,//Can change to where I can have it cover the entire space or fit the entire space
              ),
            ), 
            backgroundColor: const Color.fromARGB(255, 242, 241, 241),
            ),
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