import 'package:flutter/material.dart';
import 'package:my_website/data/assistant_replies.dart';

class AIChatWindow extends StatefulWidget {
  final VoidCallback onClose;

  const AIChatWindow({super.key, required this.onClose});

  @override
  State<AIChatWindow> createState() => _AIChatWindowState();
}

class _AIChatWindowState extends State<AIChatWindow> {
  final TextEditingController _controller = TextEditingController();

  final List<Map<String, dynamic>> _messages = [
    {"text": "Hello! 👋\n\nHow can I help you today?", "isUser": false},
  ];

  String conversationState = "normal";

  void _sendMessage() {
    final text = _controller.text.trim();

    if (text.isEmpty) return;

    setState(() {
      _messages.add({"text": text, "isUser": true});

      _messages.add({"text": getConversationReply(text), "isUser": false});
    });

    _controller.clear();
  }

  String getConversationReply(String message) {
    final text = message.toLowerCase();

    if (conversationState == "normal") {
      if (text.contains("broken") ||
          text.contains("not working") ||
          text.contains("won't open") ||
          text.contains("doesn't open") ||
          text.contains("will not open") ||
          text.contains("stuck") ||
          text.contains("jammed")) {
        conversationState = "door_problem";

        return "I'm sorry you're having trouble with your garage door. Is the door making any noise when you try to open it?";
      }

      return AssistantReplies.getReply(message);
    }

    if (conversationState == "door_problem") {
      conversationState = "normal";

      return "Thank you for the information. It could be an issue with the opener, springs, or another component. Would you like to request a free quote?";
    }

    return AssistantReplies.getReply(message);
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
              itemCount: _messages.length,
              itemBuilder: (context, index) {
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
