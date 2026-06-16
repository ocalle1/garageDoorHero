import 'package:flutter/material.dart';
import 'widgets/navbar.dart';

void main() {
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
        primaryColor: const Color(0xFFF97316), // Orange
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 134, 13),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 2,
        toolbarHeight: 120,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFF1F2937), // Dark gray menu icon
        ),
        title: Image.asset(
          'assets/images/logo.webp',
          height: 100,
        ),
      ),
      drawer: const Navbar(),
      body: const Center(
        child: Text(
          'Home Pagedsadasdsaddsadsadsadasdasdsadsadsaas',
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),  
      ),
    );
  }
}