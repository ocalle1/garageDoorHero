class AssistantReplies {
  static String getReply(String message) {
    final text = message.toLowerCase();

    // Repairs
    if (text.contains("repair") ||
        text.contains("fix") ||
        text.contains("broken")) {
      return "Yes! We repair garage doors, broken springs, cables, rollers, tracks, and openers.";
    }

    // Installation
    if (text.contains("install") || text.contains("new door")) {
      return "Yes! We install new garage doors and garage door openers.";
    }

    // Springs
    if (text.contains("spring")) {
      return "We replace broken or worn garage door springs quickly and safely.";
    }

    // Openers
    if (text.contains("opener")) {
      return "We repair and install garage door openers, including troubleshooting remote and motor issues.";
    }

    // Hours
    if (text.contains("hours") ||
        text.contains("schedule") ||
        text.contains("when are you open")) {
      return "Our business hours are Monday through Friday from 8:00 AM to 5:00 PM.";
    }

    // Phone
    if (text.contains("phone") ||
        text.contains("call") ||
        text.contains("number")) {
      return "You can reach us at (951) 498-7958.";
    }

    // Quotes
    if (text.contains("quote") ||
        text.contains("estimate") ||
        text.contains("price")) {
      return "We provide free quotes. Contact us with your garage door issue and we'll be happy to help.";
    }

    // Services
    if (text.contains("service")) {
      return "We offer garage door repair, installation, opener replacement, spring replacement, maintenance, and inspections.";
    }

    return "I'm sorry, I don't know the answer to that yet. Please call us at (951) 498-7958 and we'll be happy to help.";
  }
}
