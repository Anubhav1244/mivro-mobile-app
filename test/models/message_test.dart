import 'package:flutter_test/flutter_test.dart';
import 'package:mivro/presentation/chat/model/message.dart'; // Ensure the path is correct

// class Message {
//   final String text;
//   final bool isUser;

//   const Message({
//     required this.text,
//     required this.isUser,
//   });
// }

void main() {
  group('Message Model', () {
    test('should return a Message instance', () {
      // arrange
      Message message;

      // act
      message = const Message(text: 'Hello', isUser: true); // Remove var and use Message type

      // assert
      expect(message, isA<Message>());
      expect(message.isUser, true);
      expect(message.text, 'Hello');
    });
  });
}
