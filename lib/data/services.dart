//Home Page

final hero = {
  'id': 'hero',
  'type': 'hero',
  'description':
      //title so needs to be changed - font size,bold and color
      'Professional Garage Door Repair & Service\n'
      "Fast, reliable garage door repair available 24/7. Emergency repairs, installation, and maintenance for residential and commercial properties\n"
      "✓ Licensed & Insured | ✓ Same-Day Service Available | ✓ 30+ Years Experience",
};

//NEW Updated SERVICES layout
final services = [
  {
    'id': 'residential',
    'type': 'service',
    'title': 'Residential Garage Doors',
    'description': 'From routine maintenance to emergency repairs...',
    'images': ['assets/images/image1.jpg', 'assets/images/image2.jpg'],
  },

  {
    'id': 'commercial',
    'type': 'service',
    'title': 'Commercial Garage Doors',
    'description': 'High-performance doors for warehouses...',
    'images': ['assets/images/services/commercial_door.jpeg'],
  },

  {
    'id': 'screen_doors',
    'type': 'service',
    'title': 'Garage Screen Doors',
    'description': 'Fresh air while keeping pests out...',
    'images': ['assets/images/services/screen_door.jpeg'],
  },

  {
    'id': 'gate_openers',
    'type': 'service',
    'title': 'Gate Openers',
    'description': 'Automated gate systems...',
    'images': ['assets/images/services/gate_opener.jpeg'],
  },
  {
    'id': 'work_section',
    'type': 'video_section',
    'title': 'See Our Work in Action',
    'videos': [
      'assets/videos/container3/video1_web.mp4',
      'assets/videos/container3/video2_web.mp4',
    ],
  },
  //SPECIAL
  {
    'id': 'repair_special',
    'type': 'special',
    // 'headline': 'Tired of dealing with a malfunctioning garage door?',
    // 'title': 'Garage Door Repair',r
    // 'description':
    // 'Tired of dealing with a malfunctioning garage door? Garage Doors Hero and Gate provides fast, reliable service...',
    'bullets': [
      'Why Choose Us',
      '✓ Live operators available 24/7 to answer all calls',
      '✓ Evening and weekend appointments available at no extra charge',
      '✓ Emergency garage door service when you need it most',
      '✓ All work is fully guaranteed for your peace of mind',
      '✓ We accept all major credit cards for convenience',
      '✓ Professionally trained and experienced technicians',
      '✓ We repair and service all major garage door brands',
    ],
    // 'cta': 'Contact Garage Doors Hero and Gate today...',
    // 'images': ['assets/images/homepage_container4/image1_container4.jpg'],
  },
];
// CALL TO ACTION SECTION
final callToAction = {
  'id': 'cta_final',
  'type': 'cta_section',
  'title': "Don't Let A Broken Door Stop You",
  'description':
      "Contact DoorFix Pro today for fast, professional garage door service.\n"
      "Call us now for an immediate estimate or emergency repair.",
  'trustBar': ['Available 24/7', 'Same-day repairs', 'Fully insured'],
};
//Footer
final footerSection = {
  'id': 'footer_section',
  // 'type': 'footer_section',
  'brand': {
    'image': 'assets/images/logo.webp',
    'tagline': 'Professional garage door repair and service available 24/7.',
  },
  'links': {
    'title': 'Quick Links',
    'items': ['Services', 'About Us', 'Contact'],
  },
  'contact': {
    'title': 'Contact',
    'phone': '951-498-7958',
    'email': 'garagedoorshero@gmail.com',
    'availability': 'Available 24/7 for emergencies',
  },
};
