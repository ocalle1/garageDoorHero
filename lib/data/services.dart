//Home Page

final heroIntroduction = {
  'id': 'hero',
  'type': 'hero',
  'title': 'Professional Garage Doors & Gate Services',
  'descriptionMain':
      'Fast, reliable garage door repair available 24/7. Emergency repairs, installation, and maintenance for residential and commercial properties',

  'descriptionHighlights':
      '✓ Licensed & Insured | ✓ Same-Day Service Available | ✓ 30+ Years Experience',
};

//NEW Updated SERVICES layout
final services = [
  {'id': 'services_header', 'type': 'section_header', 'title': 'Our Services'},

  // 1
  {
    'id': 'residential',
    'type': 'service',
    'image': 'assets/images/image1.jpg',
    'title': 'Residential Garage Doors',
    'description':
        "From routine maintenance to emergency repairs, we keep your home's garage door running smoothly. Our team handles spring replacements, panel repairs, opener fixes, and more.",
    'bullets': [
      'Spring replacement & repairs',
      'Opener installation & repair',
      'Panel & cable replacement',
      'Regular maintenance plans',
    ],
  },
  // 2
  {
    'id': 'commercial',
    'type': 'service',
    'image': 'assets/images/services/commercial_door.jpeg',
    'title': 'Commercial Roll up Doors',
    'description':
        'Specializing in high-performance doors for warehouses, loading docks, and commercial facilities. We understand the importance of reliability and quick repairs.',
    'bullets': [
      'High-speed door installation',
      '24/7 emergency repairs',
      'Preventive maintenance contracts',
      'Fleet garage door solutions',
    ],
  },
  // 3
  {
    'id': 'automatic_gate',
    'type': 'service',
    'image': 'assets/images/services/gate_opener.jpeg',
    'title': 'Automatic Gate Installation & Repair',
    'description':
        'We install, repair, and maintain automatic driveway gate systems for residential properties. Reliable access control and smooth operation every time.',
    'bullets': [
      'Sliding and swing gate openers',
      'Keypad and remote control systems',
      'Emergency manual override installation',
      'Repair and troubleshooting service',
    ],
  },
  // 4
  {
    'id': 'screen_doors',
    'type': 'service',
    'image': 'assets/images/services/screen_door.jpeg',
    'title': 'Lifestyle Screens',
    'description':
        'Professional gate opener installation and repair for residential and commercial properties. Enhance security and convenience with reliable automated gate systems.',
    'bullets': [
      'Custom screen door installation',
      'Retractable screen options',
      'Repair and maintenance',
      'Pet-resistant screening available',
    ],
  },

  // 5
  {
    'id': 'fence',
    'type': 'service',
    'image': 'assets/images/services/fence_door.jpeg',
    'title': 'Fence Services',
    'description':
        "Complete fence installation, repair, and maintenance services. We work with all fence types and materials to enhance your property's security and curb appeal.",
    'bullets': [
      'Fence installation and replacement',
      'Repair and post replacement',
      'Wood, vinyl, and metal fencing',
      'Staining and maintenance programs',
    ],
  },
  // 6
  {
    'id': 'welding',
    'type': 'service',
    'image': 'assets/images/services/welding.jpeg',
    'title': 'Welding Services',
    'description':
        'Professional welding and metal fabrication for gates, garage doors, frames, and custom repairs. Built for strength, safety, and long-lasting durability.',
    'bullets': [
      'Gate and frame welding repairs',
      'Custom metal fabrication',
      'Structural reinforcement work',
      'On-site mobile welding service',
    ],
  },

  // 7
  {
    'id': 'storefront',
    'type': 'service',
    'image': 'assets/images/services/commercialStoreFront.jpeg',
    'title': 'Commercial Storefront Services',
    'description':
        'We install, repair, and maintain commercial storefront doors and systems. Secure, reliable solutions for businesses, warehouses, and retail properties.',
    'bullets': [
      'Glass & aluminum storefront door repair',
      'Commercial overhead door installation',
      'Lock, hinge, and hardware replacement',
      'Emergency commercial repairs',
    ],
  },
  // 8
  {
    'type': 'service',
    'image': 'assets/images/services/boxTruckRllupDoor.jpeg',
    'title': 'Box Truck Roll-Up Doors',
    'description':
        'We repair, replace, and install roll-up doors for box trucks and commercial fleet vehicles. Fast, durable service to keep your business moving.',
    'bullets': [
      'Roll-up door installation & replacement',
      'Track and roller repair',
      'Latch, lock, and handle repairs',
      'Emergency fleet repairs',
    ],
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
    'title': 'Why Choose us',
    'bullets': [
      ' Live operators available 24/7 to answer all calls',
      ' Evening and weekend appointments available at no extra charge',
      ' Emergency garage door service when you need it most',
      ' All work is fully guaranteed for your peace of mind',
      ' We accept all major credit cards for convenience',
      ' Professionally trained and experienced technicians',
      ' We repair and service all major garage door brands',
    ],
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
