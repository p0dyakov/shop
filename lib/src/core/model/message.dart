class Message {
  Message({
    required this.senderName,
    required this.senderAddress,
    required this.sended,
    required this.message,
  });

  final String? senderName;
  final String? senderAddress;
  final DateTime sended;
  final String message;
}
