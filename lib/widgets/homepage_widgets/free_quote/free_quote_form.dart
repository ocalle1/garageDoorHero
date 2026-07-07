import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FreeQuoteForm extends StatefulWidget {
  const FreeQuoteForm({super.key});

  @override
  State<FreeQuoteForm> createState() => _FreeQuoteFormState();
}

class _FreeQuoteFormState extends State<FreeQuoteForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();
  final messageController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  String? selectedService;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Request an Estimate",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 30),

                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: "Phone Number",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      labelText: "What service do you need?",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: "Garage Door Repair & Maintenance",
                        child: Text("Garage Door Repair & Maintenance"),
                      ),
                      DropdownMenuItem(
                        value: "Commercial Roll up Doors",
                        child: Text("Commercial Roll up Doors"),
                      ),
                      DropdownMenuItem(
                        value: "Automatic Gate Repair & Maintenance",
                        child: Text("Automatic Gate Repair & Maintenance"),
                      ),
                      DropdownMenuItem(
                        value: "Lifestyle Screen Doors",
                        child: Text("Lifestyle Screen Doors"),
                      ),
                      DropdownMenuItem(
                        value: "Fence Services",
                        child: Text("Fence Services"),
                      ),
                      DropdownMenuItem(
                        value: "Welding Services",
                        child: Text("Welding Services"),
                      ),
                      DropdownMenuItem(
                        value: "Commercial Storefront Services",
                        child: Text("Commercial Storefront Services"),
                      ),
                      DropdownMenuItem(
                        value: "Box Truck Roll-Up Doors",
                        child: Text("Box Truck Roll-Up Doors"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedService = value;
                      });
                    },
                  ),

                  const SizedBox(height: 20),

                  TextFormField(
                    controller: cityController,
                    decoration: const InputDecoration(
                      labelText: "What city are you located in?",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Submit Button
                  TextFormField(
                    controller: messageController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      labelText: "Message",
                      alignLabelWithHint: true,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (nameController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            phoneController.text.isEmpty ||
                            selectedService == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please fill all required fields"),
                            ),
                          );
                          return;
                        }
                        final formData = {
                          'name': nameController.text,
                          'email': emailController.text,
                          'phone': phoneController.text,
                          'service': selectedService,
                          'city': cityController.text,
                          'message': messageController.text,
                          "timestamp": FieldValue.serverTimestamp(),
                        };

                        // try {
                        //   await firestore.collection("quotes").add(formData);

                        //   if (!mounted) return;

                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //       content: Text("Request sent successfully!"),
                        //     ),
                        //   );
                        final messenger = ScaffoldMessenger.of(context);

                        try {
                          await firestore.collection("quotes").add(formData);

                          if (!mounted) return;

                          messenger.showSnackBar(
                            const SnackBar(
                              content: Text("Request sent successfully!"),
                            ),
                          );
                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          cityController.clear();
                          messageController.clear();

                          setState(() {
                            selectedService = null;
                          });
                          // }
                        } catch (e) {
                          if (!mounted) return;

                          messenger.showSnackBar(
                            SnackBar(content: Text("Error: $e")),
                          );
                        }
                      },

                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
