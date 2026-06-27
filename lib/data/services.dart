//Home Page

final heroIntroduction = {
  'id': 'hero',
  'type': 'hero',
  'title': 'Professional Garage Door Repair & Service',
  'descriptionMain':
      'Fast, reliable garage door repair available 24/7. Emergency repairs, installation, and maintenance for residential and commercial properties',

  'descriptionHighlights':
      '✓ Licensed & Insured | ✓ Same-Day Service Available | ✓ 30+ Years Experience',
};

//NEW Updated SERVICES layout
final services = [
  {'id': 'services_header', 'type': 'section_header', 'title': 'Our Services'},
  {
    'id': 'residential',
    'type': 'service',
    'title': 'Residential Garage Doors',
    'description':
        "From routine maintenance to emergency repairs, we keep your home's garage door running smoothly. Our team handles spring replacements, panel repairs, opener fixes, and more.",
    'bullets': [
      'Spring replacement & repairs',
      'Opener installation & repair',
      'Panel & cable replacement',
      'Regular maintenance plans',
    ],
    'images': ['assets/images/image1.jpg', 'assets/images/image2.jpg'],
  },

  {
    'id': 'commercial',
    'type': 'service',
    'title': 'Commercial Garage Doors',
    'description':
        'Specializing in high-performance doors for warehouses, loading docks, and commercial facilities. We understand the importance of reliability and quick repairs.',
    'images': ['assets/images/services/commercial_door.jpeg'],
    'bullets': [
      'High-speed door installation',
      '24/7 emergency repairs',
      'Preventive maintenance contracts',
      'Fleet garage door solutions',
    ],
  },

  {
    'id': 'screen_doors',
    'type': 'service',
    'title': 'Garage Screen Doors',
    'description':
        'Stay comfortable while enjoying fresh air and natural light. Our garage screen doors offer ventilation without compromising security or style.',
    'images': ['assets/images/services/screen_door.jpeg'],
    'bullets': [
      'Custom screen door installation',
      'Retractable screen options',
      'Repair and maintenance',
      'Pet-resistant screening available',
    ],
  },

  {
    'id': 'gate_openers',
    'type': 'service',
    'title': 'Gate Openers',
    'description':
        'Professional gate opener installation and repair for residential and commercial properties. Enhance security and convenience with reliable automated gate systems.',
    'images': ['assets/images/services/gate_opener.jpeg'],
    'bullets': [
      'Sliding and swing gate openers',
      'Keypad and remote control systems',
      'Emergency manual override installation',
      'Repair and troubleshooting service',
    ],
  },
  {
    'id': 'fence',
    'type': 'service',
    'title': 'Fence Services',
    'description':
        "Complete fence installation, repair, and maintenance services. We work with all fence types and materials to enhance your property's security and curb appeal.",
    'images': ['assets/images/services/fence_door.jpeg'],

    'bullets': [
      'Fence installation and replacement',
      'Repair and post replacement',
      'Wood, vinyl, and metal fencing',
      'Staining and maintenance programs',
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
    'bullets': [
      'Why Choose Us',
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
