// FILE: lib/features/messages/domain/message.dart

class Message {
  final String id;
  final String sender;
  final String body;
  final DateTime sentAt;

  const Message({
    required this.id,
    required this.sender,
    required this.body,
    required this.sentAt,
  });
}