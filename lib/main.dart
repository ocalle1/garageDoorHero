import 'package:flutter/material.dart';
import 'widgets/navbar.dart';
// import 'package:sticky_headers/sticky_headers.dart';

void main() {
  //runapp is the entry point of the Flutter application, it runs the MyApp widget which is the root of the widget tree
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//BODY code for the app, including the theme and home page
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Body background color ***scaffoldBackgroundColor: Colors.white - suggested color
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 34, 15, 1), // Orange
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 134, 13),
      ),
      home: Navbar(),
      // home: const HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         surfaceTintColor: Colors.white,
//         elevation: 2,
//         toolbarHeight: 120,
//         centerTitle: true,
//         iconTheme: const IconThemeData(
//           color: Color(0xFF1F2937), // Dark gray menu icon
//         ),
//         title: Image.asset(
//           'assets/images/logo.webp',
//           height: 100,
//         ),
//       ),
//       drawer: const Navbar(),
//       body: ListView.builder(
//         itemCount: 20,
//         itemBuilder: (context, index) => StickyHeaderBuilder(
//           header: Container(
//             width: double.infinity,
//             color: Colors.red,
//             padding: const EdgeInsets.all(16),
//             child: Text('Sticky Header $index'),
//           ),
//           content: Image.network(
//             'https://unsplash.com/photos/a-white-fire-hydrant-sitting-in-front-of-a-garage-door-0ujK6DGzWBE',
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: 200,
//           ), builder: (BuildContext context, double stuckAmount) { 
            
//            },
//         ),
//       )
//       );
//   }
// }