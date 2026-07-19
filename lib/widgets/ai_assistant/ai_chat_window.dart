import 'package:flutter/material.dart';
import 'package:my_website/data/assistant_replies.dart';
import 'package:my_website/models/lead.dart';

class AIChatWindow extends StatefulWidget {
  final VoidCallback onClose;

  const AIChatWindow({super.key, required this.onClose});

  @override
  State<AIChatWindow> createState() => _AIChatWindowState();
}

class _AIChatWindowState extends State<AIChatWindow> {
  final Lead currentLead = Lead();
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {
      "text":
          "👋 Welcome to Garage Doors Hero!\n\n"
          "I'm Hero Assistant and I'm here to help.\n\n"
          "You can:\n"
          "• Request a free quote\n"
          "• Schedule a repair\n"
          "• Learn about our services\n"
          "• Ask any garage door question",
      "isUser": false,
    },
  ];
  final List<String> quickActions = [
    "💲 Get Free Quote",
    "🔧 Emergency Repair",
    "📅 Schedule Service",
    "❓ Ask a Question",
  ];

  String conversationState = "idle";
  String leadStep = "";
  bool isTyping = false;

  void _sendMessage() async {
    final text = _controller.text.trim();

    if (text.isEmpty) return;

    setState(() {
      _messages.add({"text": text, "isUser": true});

      isTyping = true;
    });

    _controller.clear();

    await Future.delayed(const Duration(seconds: 2));

    final reply = getConversationReply(text);

    setState(() {
      isTyping = false;

      _messages.add({"text": reply, "isUser": false});
    });
  }

  String getConversationReply(String message) {
    final text = message.toLowerCase();

    // Quick Action Responses

    // Lead Collection

    if (conversationState == "collect_lead") {
      if (leadStep == "name") {
        currentLead.name = message;
        leadStep = "phone";

        return "Thanks ${currentLead.name}! What is the best phone number to reach you?";
      }

      if (leadStep == "phone") {
        currentLead.phone = message;
        leadStep = "email";

        return "Great. What email address should we send your quote to?";
      }

      if (leadStep == "email") {
        currentLead.email = message;
        leadStep = "service";

        return "What issue are you having with your garage door? (Repair, opener, springs, installation, etc.)";
      }

      if (leadStep == "service") {
        currentLead.issue = message;

        conversationState = "normal";

        return "Thank you! I have your information. A Garage Doors Hero specialist will follow up with you soon.";
      }
    }

    // Quick action triggers
    if (text.contains('quote') ||
        text.contains('get free quote') ||
        text.contains('free quote')) {
      conversationState = 'collect_lead';
      leadStep = 'name';
      return 'Sure — I can help with a free quote. First, what is your full name?';
    }

    if (text.contains('repair') ||
        text.contains('emergency') ||
        text.contains('fix')) {
      conversationState = 'collect_lead';
      leadStep = 'name';
      return 'I can help schedule a repair. To get started, may I have your name?';
    }

    if (text.contains('schedule') ||
        text.contains('service') ||
        text.contains('book')) {
      conversationState = 'collect_lead';
      leadStep = 'name';
      return 'Okay — let\'s schedule service. What is your name?';
    }

    // Default reply
    return "I'm here to help — you can request a free quote, schedule a repair, or ask a question.";
  }

  void _sendQuickAction(String action) {
    _controller.text = action;
    _sendMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 15,
            color: Colors.black26,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                const Icon(Icons.smart_toy, color: Colors.white),

                const SizedBox(width: 10),

                const Expanded(
                  child: Text(
                    "Hero Assistant",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                IconButton(
                  onPressed: widget.onClose,
                  icon: const Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          ),

          // Body
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length + (isTyping ? 1 : 0),
              itemBuilder: (context, index) {
                if (isTyping && index == _messages.length) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Hero Assistant is typing...",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  );
                }
                final message = _messages[index];

                return Align(
                  alignment: message["isUser"]
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: message["isUser"]
                          ? Colors.blue
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      message["text"],
                      style: TextStyle(
                        color: message["isUser"] ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (!isTyping)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: quickActions.map((action) {
                  return ElevatedButton(
                    onPressed: () {
                      _sendQuickAction(action);
                    },
                    child: Text(action),
                  );
                }).toList(),
              ),
            ),
          // Input
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Type your message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ),
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
        ],
      ),
    );
  }
}
