import 'dart:math';

import 'package:stacked/stacked.dart';

class ChatViewModel extends ReactiveViewModel {
  List<Message> messages = [];
  init() {
    messages = generateRandomMessages(count: 100);
  }
}

List<Message> generateRandomMessages({int count = 10}) {
  List<Message> messages = [];

  Random random = Random();

  for (int i = 0; i < count; i++) {
    int id = i + 1;
    String message = "Message blah blah blah blah blah blah  $id";
    bool isSentByMe = random.nextBool();
    DateTime dateTime = DateTime.now().subtract(
      Duration(
        minutes: random.nextInt(60 * 24 * 7),
      ),
    ); // Random time within the last 7 days

    Message newMessage = Message(
      id: id,
      message: message,
      isSentByMe: isSentByMe,
      dateTime: dateTime,
      isRead: random.nextBool(),
    );

    messages.add(newMessage);
  }

  return messages;
}

class Message {
  final int id;
  final String message;
  final bool isSentByMe;
  final bool isRead;
  final DateTime dateTime;

  Message({
    required this.isRead,
    required this.id,
    required this.message,
    required this.isSentByMe,
    required this.dateTime,
  });
}
