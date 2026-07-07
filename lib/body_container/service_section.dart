//Previous Services layout

// Contains services and "why chooese us"
// class ServicesSection extends StatelessWidget {
//   final Map service;
//   final int index;

//   const ServicesSection({
//     super.key,
//     required this.service,
//     required this.index,
//   });

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: const Text('Hello World')),
//     body: const Center(
//       child: Text(
//         'Hello, World!',
//         style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//       ),
//     ),
//   );

// final type = service['type'];
//within BODY CONTAINER(SERVICES)
// final textFirst = index.isEven;
// final images = List<String>.from(service['images'] ?? []);
//AFTER SERVCES
// final isSpecial = type == 'special';
// final bullets = List<String>.from(service['bullets'] ?? []);

//BODY SERVICES - title and desription
// final textWidget = Expanded(
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsetsGeometry.only(bottom: 24),
//         child: Text(
//           service['title'] ?? '',
//           style: TextStyle(
//             fontSize: 30,
//             height: 1.6,
//             fontWeight: FontWeight.bold,
//             color: Colors.grey[900],
//           ),
//         ),
//       ),

//       const SizedBox(height: 8),
//       Padding(
//         padding: const EdgeInsets.only(bottom: 24),
//         child: Text(
//           service['description'] ?? '',
//           style: const TextStyle(
//             fontSize: 20,
//             color: Color.fromARGB(255, 121, 120, 120),

//             height: 1.6,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//       const SizedBox(height: 16),
//       //bullets - in Services
//       if (bullets.isNotEmpty) BulletList(bullets: bullets),
//     ],
//   ),
// );

//BODY SERVICES - Images
// final imageWidget = Expanded(child: CarouselContainer1(imageUrls: images));

// SPECIAL LAYOUT - Bullets
// if (isSpecial) {
//   return Padding(
//     padding: const EdgeInsets.all(16),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: 1,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 service['title'] ?? '',
//                 style: const TextStyle(
//                   fontSize: 30,
//                   height: 1.2,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 8),

//               Text(
//                 service['description'] ?? '',
//                 style: const TextStyle(fontSize: 18),
//               ),

//               const SizedBox(height: 16),

//               const SizedBox(height: 8),
//               if (bullets.isNotEmpty) BulletList(bullets: bullets),
//             ],
//           ),
//         ),

//         const SizedBox(width: 20),
//       ],
//     ),
//   );
// }
// return Padding(
//   padding: const EdgeInsets.all(16),
//   child: Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: textFirst
//         ? [textWidget, const SizedBox(width: 16), imageWidget]
//         : [imageWidget, const SizedBox(width: 16), textWidget],
//   ),
// );

//ADD the callToAction data from services.dart
//   }
// }
