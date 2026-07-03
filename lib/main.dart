import 'package:flutter/material.dart';
import 'body_container/navbar.dart';
// import 'widgets/body_container/container_1.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
        fontFamily: 'sans-serif',
        primaryColor: const Color.fromARGB(255, 34, 15, 1), // Orange
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 134, 13),
      ),
      home: Navbar(),
    );
  }
}
